#include "controller.hpp"
#include "logger.hpp"

#include "../lib/xptools/Socket.h"

#include "scpiServerThread.hpp"
#include "waveformServerThread.hpp"
#include "logger.hpp"

#include <thread>
#include <map>
#include <mutex>

#include <string.h>
#include <math.h>

using namespace std;

Socket g_scpiSocket(AF_INET6, SOCK_STREAM, IPPROTO_TCP);

bool ScpiSend(Socket& sock, const string& cmd);
bool ScpiRecv(Socket& sock, string& str);
void ParseScpiLine(const string& line, string& subject, string& cmd, bool& query, vector<string>& args);


//RampDemo Related
int8_t RD_PACKET_ORIGINAL[RD_PACKET_SIZE];


controller::controller(boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *inputQ)
{
    dataQueue = inputQ;
    stopController.store(false);

    // command packet parser thread
    controllerThread = std::thread(&controller::controllerLoop, this);

#ifdef ELECTRON
    // Bridge to JS
    bridgeThread = new Bridge("testPipe", &controllerQueue_tx, &controllerQueue_rx);
    bridgeThread->TxStart();
    bridgeThread->RxStart();
#endif

    // Create pipeline threads
    triggerThread = new Trigger(dataQueue, &triggerProcessorQueue, triggerLevel);
    processorThread = new Processor(&triggerProcessorQueue, &processorPostProcessorQueue_1);
    postProcessorThread = new postProcessor(&processorPostProcessorQueue_1, &controllerQueue_tx);

#ifndef NOHARDWARE
    pcieLinkThread = new PCIeLink(dataQueue);
#endif

    // set default values
    setCh(1);
    setTriggerCh(1);
    setLevel(64);
    setPerSize(1);
    setWindowSize(1000);

    //RampDemo related
    for(int ch = 0; ch < RD_CHAN_COUNT; ch++) {
        for(int i = 0; ch == 0 && i < RD_DATA_PER_CHAN; i++) {
            RD_PACKET_ORIGINAL[i + ch*RD_DATA_PER_CHAN] = (i % 24) - 12;
        }
        for(int i = 0; ch == 1 && i < RD_DATA_PER_CHAN; i++) {
            RD_PACKET_ORIGINAL[i + ch*RD_DATA_PER_CHAN] = 12 - (i % 24);
        }
        for(int i = 0; ch == 2 && i < RD_DATA_PER_CHAN; i++) {
            RD_PACKET_ORIGINAL[i + ch*RD_DATA_PER_CHAN] = (i % 24) / 12;
        }
        for(int i = 0; ch == 3 && i < RD_DATA_PER_CHAN; i++) {
            RD_PACKET_ORIGINAL[i + ch*RD_DATA_PER_CHAN] = 10;
        }
    }

    // input file related
    std::string newName = "./test/test1.csv";
    char* filename = (char*)malloc(newName.size() + 1);
    std::strcpy(filename, newName.c_str());
    free(inputFile);
    inputFile = filename;

    INFO << "Controller Created";
}

controller::~controller()
{
    stopController.store(true);
    controllerThread.join();

    delete triggerThread;
    delete processorThread;
    delete postProcessorThread;
#ifdef ELECTRON
    delete bridgeThread;
#endif
#ifndef NOHARDWARE
    delete pcieLinkThread;
#endif

    DEBUG << "Controller Destroyed";
}

/*******************************************************************************
 * controllerLoop()
 *
 * Core loop for the controller.
 * Parses packets from the rx queue
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
void controller::controllerLoop()
{
	while(true)
	{
		Socket client = g_scpiSocket.Accept();
		Socket dataClient(-1);
//		LogVerbose("Client connected to control plane socket\n");
		DEBUG << "Client connected to control plane socket";

		if(!client.IsValid())
			break;
		if(!client.DisableNagle())
			DEBUG << "Failed to disable Nagle on socket, performance may be poor";
//			LogWarning("Failed to disable Nagle on socket, performance may be poor\n");

		thread dataThread(WaveformServerThread);

		//Main command loop
		string line;
		string cmd;
		bool query;
		string subject;
		vector<string> args;
		while(true)
		{
			if(!ScpiRecv(client, line))
				break;
			ParseScpiLine(line, subject, cmd, query, args);
			DEBUG << "line: " << line;
//			LogTrace((line + "\n").c_str());

//			//Extract channel ID from subject and clamp bounds
//			size_t channelId = 0;
//			size_t laneId = 0;
//			bool channelIsDigital = false;
//			if(isalpha(subject[0]))
//			{
//				channelId = min(static_cast<size_t>(subject[0] - 'A'), g_numChannels);
//				channelIsDigital = false;
//			}
//			else if(isdigit(subject[0]))
//			{
//				channelId = min(subject[0] - '0', 2) - 1;
//				channelIsDigital = true;
//				if(subject.length() >= 3)
//					laneId = min(subject[2] - '0', 7);
//			}

			if(query)
			{
				//Read ID code
				if(cmd == "*IDN") {
					DEBUG << "SCPI: *IDN";
					// TODO: Pull these from the firmware
					std::string g_model = "1000A";
					std::string g_serial = "000000";
					std::string g_fwver = "0.1";

//					ScpiSend(client, string("Pico Technology,") + g_model + "," + g_serial + "," + g_fwver);
					ScpiSend(client, string("ThunderScope,") + g_model + "," + g_serial + "," + g_fwver);

				}
				//Get number of channels
				else if(cmd == "CHANS") {
					DEBUG << "CHANS";
//					ScpiSend(client, to_string(g_numChannels));
					// TODO: Pull this from a global variable. Check if dynamic
					// channel numbers is allowed in glscopeclient
					ScpiSend(client, to_string(4));
				}
//
//				//Get legal sample rates for the current configuration
//				else if(cmd == "RATES")
//				{
//					string ret = "";
//
//					lock_guard<mutex> lock(g_mutex);
//
//					//Enumerate timebases
//					//Don't report every single legal timebase as there's way too many, the list box would be huge!
//					//Report the first nine, then go to larger steps
//					size_t vec[] =
//					{
//						0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
//						14, 29, 54, 104, 129, 254, 504, 629, 1254, 2504, 3129, 5004, 6254, 15629, 31254,
//						62504, 156254, 312504, 625004, 1562504
//					};
//					for(auto i : vec)
//					{
//						double intervalNs;
//						int32_t intervalNs_int;
//						size_t maxSamples;
//						int32_t maxSamples_int;
//						PICO_STATUS status;
//						status = PICO_RESERVED_1;
//						if(g_pico_type == PICO6000A)
//							status = ps6000aGetTimebase(g_hScope, i, 1, &intervalNs, &maxSamples, 0);
//						else if(g_pico_type == PICO3000A)
//						{
//							status = ps3000aGetTimebase(g_hScope, i, 1, &intervalNs_int, 0, &maxSamples_int, 0);
//							intervalNs = intervalNs_int;
//							maxSamples = maxSamples_int;
//						}
//
//						if(PICO_OK == status)
//						{
//							size_t intervalFs = intervalNs * 1e6f;
//							ret += to_string(intervalFs) + ",";
//						}
//						else
//							LogWarning("GetTimebase failed, code %d / 0x%x\n", status, status);
//					}
//					ScpiSend(client, ret);
//				}
//
//				//Get memory depths
//				else if(cmd == "DEPTHS")
//				{
//					string ret = "";
//
//					lock_guard<mutex> lock(g_mutex);
//					double intervalNs;
//					int32_t intervalNs_int;
//					size_t maxSamples;
//					int32_t maxSamples_int;
//
//					PICO_STATUS status;
//					status = PICO_RESERVED_1;
//					//Ask for max memory depth at 1.25 Gsps. Why does legal memory depend on sample rate?
//					if(g_pico_type == PICO6000A)
//						status = ps6000aGetTimebase(g_hScope, 2, 1, &intervalNs, &maxSamples, 0);
//					else if(g_pico_type == PICO3000A)
//						status = ps3000aGetTimebase(g_hScope, 2, 1, &intervalNs_int, 0, &maxSamples_int, 0);
//
//					if(PICO_OK == status)
//					{
//						//Seems like there's no restrictions on actual memory depth other than an upper bound.
//						//To keep things simple, report 1-2-5 series from 10K samples up to the actual max depth
//
//						for(size_t base = 10000; base < maxSamples; base *= 10)
//						{
//							const size_t muls[] = {1, 2, 5};
//							for(auto m : muls)
//							{
//								size_t depth = m * base;
//								if(depth < maxSamples)
//									ret += to_string(depth) + ",";
//							}
//						}
//
//						ret += to_string(maxSamples) + ",";
//					}
//
//					ScpiSend(client, ret);
//				}
//
//				else if(cmd == "PRESENT")
//				{
//					lock_guard<mutex> lock(g_mutex);
//
//					//There's no API to test for presence of a MSO pod without trying to enable it.
//					//If no pod is present, this call will return PICO_NO_MSO_POD_CONNECTED.
//					PICO_CHANNEL podId = (PICO_CHANNEL)(PICO_PORT0 + channelId);
//					auto status = ps6000aSetDigitalPortOn(
//						g_hScope,
//						podId,
//						g_msoPodThreshold[channelId],
//						8,
//						g_msoHysteresis[channelId]);
//
//					if(status == PICO_NO_MSO_POD_CONNECTED)
//						ScpiSend(client, "0");
//
//					//The pod is here. If we don't need it on, shut it back off
//					else
//					{
//						if(!g_msoPodEnabled[channelId])
//							ps6000aSetDigitalPortOff(g_hScope, podId);
//
//						ScpiSend(client, "1");
//					}
//				}

				else {
//					LogDebug("Unrecognized query received: %s\n", line.c_str());
//					DEBUG << "Unrecognised query recieved: " << line.c_str();
					DEBUG << "Unrecognised query recieved: " << cmd;
				}
			}

			else if(cmd == "EXIT")
				break;

//			else if(cmd == "ON")
//			{
//				lock_guard<mutex> lock(g_mutex);
//
//				if(channelIsDigital)
//				{
//					PICO_CHANNEL podId = (PICO_CHANNEL)(PICO_PORT0 + channelId);
//					auto status = ps6000aSetDigitalPortOn(
//						g_hScope,
//						podId,
//						g_msoPodThreshold[channelId],
//						8,
//						g_msoHysteresis[channelId]);
//					if(status != PICO_OK)
//						LogError("ps6000aSetDigitalPortOn failed with code %x\n", status);
//					else
//						g_msoPodEnabled[channelId] = true;
//				}
//				else
//				{
//					g_channelOn[channelId] = true;
//					UpdateChannel(channelId);
//				}
//
//			}
//			else if(cmd == "OFF")
//			{
//				lock_guard<mutex> lock(g_mutex);
//
//				if(channelIsDigital)
//				{
//					PICO_CHANNEL podId = (PICO_CHANNEL)(PICO_PORT0 + channelId);
//					auto status = ps6000aSetDigitalPortOff(g_hScope, podId);
//					if(status != PICO_OK)
//						LogError("ps6000aSetDigitalPortOff failed with code %x\n", status);
//				}
//				else
//				{
//					g_channelOn[channelId] = false;
//					UpdateChannel(channelId);
//				}
//			}
//
//			else if( (cmd == "BITS") && (args.size() == 1) )
//			{
//				lock_guard<mutex> lock(g_mutex);
//
//				if(g_pico_type != PICO6000A)
//					continue;
//
//				ps6000aStop(g_hScope);
//
//				//Even though we didn't actually change memory, apparently calling ps6000aSetDeviceResolution
//				//will invalidate the existing buffers and make ps6000aGetValues() fail with PICO_BUFFERS_NOT_SET.
//				g_memDepthChanged = true;
//
//				int bits = stoi(args[0].c_str());
//				switch(bits)
//				{
//					case 8:
//						ps6000aSetDeviceResolution(g_hScope, PICO_DR_8BIT);
//						break;
//
//					case 10:
//						ps6000aSetDeviceResolution(g_hScope, PICO_DR_10BIT);
//						break;
//
//					case 12:
//						ps6000aSetDeviceResolution(g_hScope, PICO_DR_12BIT);
//						break;
//
//					default:
//						LogError("User requested invalid resolution (%d bits)\n", bits);
//				}
//
//				if(g_triggerArmed)
//					StartCapture(false);
//			}
//
//			else if( (cmd == "COUP") && (args.size() == 1) )
//			{
//				lock_guard<mutex> lock(g_mutex);
//				if(args[0] == "DC1M")
//					g_coupling[channelId] = PICO_DC;
//				else if(args[0] == "AC1M")
//					g_coupling[channelId] = PICO_AC;
//				else if(args[0] == "DC50")
//					g_coupling[channelId] = PICO_DC_50OHM;
//
//				UpdateChannel(channelId);
//			}
//
//			else if( (cmd == "HYS") && (args.size() == 1) )
//			{
//				lock_guard<mutex> lock(g_mutex);
//
//				//Calculate hysteresis
//				int level = stoi(args[0]);
//				if(level <= 50)
//					g_msoHysteresis[channelId] = PICO_LOW_50MV;
//				else if(level <= 100)
//					g_msoHysteresis[channelId] = PICO_NORMAL_100MV;
//				else if(level <= 200)
//					g_msoHysteresis[channelId] = PICO_HIGH_200MV;
//				else
//					g_msoHysteresis[channelId] = PICO_VERY_HIGH_400MV;
//
//				LogTrace("Setting MSO pod %zu hysteresis to %d mV (code %d)\n",
//					channelId, level, g_msoHysteresis[channelId]);
//
//				//Update the pod if currently active
//				if(g_msoPodEnabled[channelId])
//					EnableMsoPod(channelId);
//			}
//
//			else if( (cmd == "OFFS") && (args.size() == 1) )
//			{
//				lock_guard<mutex> lock(g_mutex);
//
//				double requestedOffset = stod(args[0]);
//
//				double maxoff;
//				double minoff;
//				float maxoff_f;
//				float minoff_f;
//
//				//Clamp to allowed range
//				switch(g_pico_type) {
//				case PICO3000A:
//					ps3000aGetAnalogueOffset(g_hScope, g_range_3000a[channelId], (PS3000A_COUPLING)g_coupling[channelId], &maxoff_f, &minoff_f);
//					maxoff = maxoff_f;
//					minoff = minoff_f;
//					break;
//				case PICO6000A:
//					ps6000aGetAnalogueOffsetLimits(g_hScope, g_range[channelId], g_coupling[channelId], &maxoff, &minoff);
//					break;
//				}
//				requestedOffset = min(maxoff, requestedOffset);
//				requestedOffset = max(minoff, requestedOffset);
//
//				g_offset[channelId] = requestedOffset;
//				UpdateChannel(channelId);
//			}
//
//			else if( (cmd == "RANGE") && (args.size() == 1) )
//			{
//				lock_guard<mutex> lock(g_mutex);
//				auto range = stod(args[0]);
//
//				//If 50 ohm coupling, cap hardware voltage range to 5V
//				if(g_coupling[channelId] == PICO_DC_50OHM)
//					range = min(range, 5.0);
//
//				if(range > 100 && g_pico_type == PICO6000A)
//				{
//					g_range[channelId] = PICO_X1_PROBE_200V;
//					g_roundedRange[channelId] = 200;
//				}
//				else if(range > 50 && g_pico_type == PICO6000A)
//				{
//					g_range[channelId] = PICO_X1_PROBE_100V;
//					g_roundedRange[channelId] = 100;
//				}
//				else if(range > 20)
//				{
//					g_range[channelId] = PICO_X1_PROBE_50V;
//					g_range_3000a[channelId] = PS3000A_50V;
//					g_roundedRange[channelId] = 50;
//				}
//				else if(range > 10)
//				{
//					g_range[channelId] = PICO_X1_PROBE_20V;
//					g_range_3000a[channelId] = PS3000A_20V;
//					g_roundedRange[channelId] = 20;
//				}
//				else if(range > 5)
//				{
//					g_range[channelId] = PICO_X1_PROBE_10V;
//					g_range_3000a[channelId] = PS3000A_10V;
//					g_roundedRange[channelId] = 10;
//				}
//				else if(range > 2)
//				{
//					g_range[channelId] = PICO_X1_PROBE_5V;
//					g_range_3000a[channelId] = PS3000A_5V;
//					g_roundedRange[channelId] = 5;
//				}
//				else if(range > 1)
//				{
//					g_range[channelId] = PICO_X1_PROBE_2V;
//					g_range_3000a[channelId] = PS3000A_2V;
//					g_roundedRange[channelId] = 2;
//				}
//				else if(range > 0.5)
//				{
//					g_range[channelId] = PICO_X1_PROBE_1V;
//					g_range_3000a[channelId] = PS3000A_1V;
//					g_roundedRange[channelId] = 1;
//				}
//				else if(range > 0.2)
//				{
//					g_range[channelId] = PICO_X1_PROBE_500MV;
//					g_range_3000a[channelId] = PS3000A_500MV;
//					g_roundedRange[channelId] = 0.5;
//				}
//				else if(range > 0.1)
//				{
//					g_range[channelId] = PICO_X1_PROBE_200MV;
//					g_range_3000a[channelId] = PS3000A_200MV;
//					g_roundedRange[channelId] = 0.2;
//				}
//				else if(range >= 0.05)
//				{
//					g_range[channelId] = PICO_X1_PROBE_100MV;
//					g_range_3000a[channelId] = PS3000A_100MV;
//					g_roundedRange[channelId] = 0.1;
//				}
//				else if(range >= 0.02)
//				{
//					g_range[channelId] = PICO_X1_PROBE_50MV;
//					g_range_3000a[channelId] = PS3000A_50MV;
//					g_roundedRange[channelId] = 0.05;
//				}
//				else if(range >= 0.01)
//				{
//					g_range[channelId] = PICO_X1_PROBE_20MV;
//					g_range_3000a[channelId] = PS3000A_20MV;
//					g_roundedRange[channelId] = 0.02;
//				}
//				else
//				{
//					g_range[channelId] = PICO_X1_PROBE_10MV;
//					g_range_3000a[channelId] = PS3000A_10MV;
//					g_roundedRange[channelId] = 0.01;
//				}
//
//				UpdateChannel(channelId);
//
//				//Update trigger if this is the trigger channel.
//				//Trigger is digital and threshold is specified in ADC counts.
//				//We want to maintain constant trigger level in volts, not ADC counts.
//				if(g_triggerChannel == channelId)
//					UpdateTrigger();
//			}
//
//			else if( (cmd == "RATE") && (args.size() == 1) )
//			{
//				lock_guard<mutex> lock(g_mutex);
//
//				//Convert sample rate to sample period
//				auto rate = stoull(args[0]);
//				g_sampleInterval = 1e15 / rate;
//				double period_ns = 1e9 / rate;
//
//				//Find closest timebase setting
//				double clkdiv = period_ns / 0.2;
//				int timebase;
//				if(period_ns < 5)
//					timebase = round(log(clkdiv)/log(2));
//				else
//					timebase = round(clkdiv) + 4;
//
//				g_timebase = timebase;
//			}
//
//			else if( (cmd == "THRESH") && (args.size() == 1) )
//			{
//				double level = stod(args[0]);
//				int16_t code = round( (level * 32767) / 5.0);
//				g_msoPodThreshold[channelId][laneId] = code;
//
//				LogTrace("Setting MSO pod %zu lane %zu threshold to %f (code %d)\n", channelId, laneId, level, code);
//
//				lock_guard<mutex> lock(g_mutex);
//
//				//Update the pod if currently active
//				if(g_msoPodEnabled[channelId])
//					EnableMsoPod(channelId);
//			}
//
//			else if( (cmd == "DEPTH") && (args.size() == 1) )
//			{
//				lock_guard<mutex> lock(g_mutex);
//				g_memDepth = stoull(args[0]);
//
//				UpdateTrigger();
//			}
//
//			else if( (cmd == "START") || (cmd == "SINGLE") )
//			{
//				lock_guard<mutex> lock(g_mutex);
//
//				if(g_triggerArmed)
//				{
//					LogVerbose("Ignoring START command because trigger is already armed\n");
//					continue;
//				}
//
//				//Make sure we've got something to capture
//				bool anyChannels = false;
//				for(size_t i=0; i<g_numChannels; i++)
//				{
//					if(g_channelOn[i])
//					{
//						anyChannels = true;
//						break;
//					}
//				}
//				for(size_t i=0; i<g_numDigitalPods; i++)
//				{
//					if(g_msoPodEnabled[i])
//					{
//						anyChannels = true;
//						break;
//					}
//				}
//
//				if(!anyChannels)
//				{
//					LogVerbose("Ignoring START command because no channels are active\n");
//					continue;
//				}
//
//				//Start the capture
//				StartCapture(false);
//				g_triggerOneShot = (cmd == "SINGLE");
//			}
//
//			else if(cmd == "FORCE")
//			{
//				//Clear out any old trigger config
//				if(g_triggerArmed)
//				{
//					Stop();
//					g_triggerArmed = false;
//				}
//
//				UpdateTrigger(true);
//				StartCapture(true, true);
//			}
//
//			else if(cmd == "STOP")
//			{
//				lock_guard<mutex> lock(g_mutex);
//
//				Stop();
//				g_triggerArmed = false;
//			}
//
//			else if(subject == "TRIG")
//			{
//				if( (cmd == "EDGE:DIR") && (args.size() == 1) )
//				{
//					lock_guard<mutex> lock(g_mutex);
//
//					if(args[0] == "RISING")
//						g_triggerDirection = PICO_RISING;
//					else if(args[0] == "FALLING")
//						g_triggerDirection = PICO_FALLING;
//					else if(args[0] == "ANY")
//						g_triggerDirection = PICO_RISING_OR_FALLING;
//
//					UpdateTrigger();
//				}
//
//				else if( (cmd == "LEV") && (args.size() == 1) )
//				{
//					lock_guard<mutex> lock(g_mutex);
//
//					g_triggerVoltage = stof(args[0]);
//					UpdateTrigger();
//				}
//
//				else if( (cmd == "SOU") && (args.size() == 1) )
//				{
//					lock_guard<mutex> lock(g_mutex);
//
//					if(isalpha(args[0][0]))
//					{
//						g_triggerChannel = args[0][0] - 'A';
//						if(!g_channelOn[g_triggerChannel])
//						{
//							LogDebug("Trigger channel wasn't on, enabling it\n");
//							g_channelOn[g_triggerChannel] = true;
//							UpdateChannel(g_triggerChannel);
//						}
//					}
//					else if( (isdigit(args[0][0])) && (args[0].length() == 3) )
//					{
//						int npod = args[0][0] - '1';
//						int nchan = args[0][2] - '0';
//						g_triggerChannel = g_numChannels + npod*8 + nchan;
//
//						if(!g_msoPodEnabled[npod])
//						{
//							LogDebug("Trigger pod wasn't on, enabling it\n");
//							EnableMsoPod(npod);
//						}
//					}
//
//					bool wasOn = g_triggerArmed;
//					Stop();
//
//					UpdateTrigger();
//
//					if(wasOn)
//						StartCapture(false);
//				}
//
//				else if( (cmd == "DELAY") && (args.size() == 1) )
//				{
//					lock_guard<mutex> lock(g_mutex);
//
//					g_triggerDelay = stoull(args[0]);
//					UpdateTrigger();
//				}
//
//				else
//				{
//					LogDebug("Unrecognized trigger command received: %s\n", line.c_str());
//					LogIndenter li;
//					LogDebug("Command: %s\n", cmd.c_str());
//					for(auto arg : args)
//						LogDebug("Arg: %s\n", arg.c_str());
//				}
//			}

			//TODO: bandwidth limiter

			//Unknown
			else {
//				LogDebug("Unrecognized command received: %s\n", line.c_str());
				DEBUG << "Unrecognised command recieved: " << line.c_str();
//				LogIndenter li;
//				LogDebug("Subject: %s\n", subject.c_str());
				DEBUG << "Sugject: " << subject.c_str();
//				LogDebug("Command: %s\n", cmd.c_str());
				DEBUG << "Command: " << cmd.c_str();
				for(auto arg : args) {
//					LogDebug("Arg: %s\n", arg.c_str());
					DEBUG << "Arg: " << arg.c_str();
				}
			}
		}

//		LogVerbose("Client disconnected\n");
		INFO << "Client disconnected";

//		//Disable all channels when a client disconnects to put the scope in a "safe" state
//		for(auto it : g_channelOn)
//		{
//			switch(g_pico_type)
//			{
//			case PICO3000A:
//				ps3000aSetChannel(g_hScope, (PS3000A_CHANNEL)it.first, 0, PS3000A_DC, PS3000A_1V, 0.0f);
//				break;
//			case PICO6000A:
//				ps6000aSetChannelOff(g_hScope, (PICO_CHANNEL)it.first);
//				break;
//			}
//		}
//		if(g_pico_type == PICO6000A)
//		{
//			for(int i=0; i<2; i++)
//			{
//				ps6000aSetDigitalPortOff(g_hScope, (PICO_CHANNEL)(PICO_PORT0 + i));
//				g_msoPodEnabled[i] = false;
//			}
//		}

		g_waveformThreadQuit = true;
		dataThread.join();
		g_waveformThreadQuit = false;
	}

//////////////////////////////////// Origional stuff ////////////////////////////
//    EVPacket* currentPacket;
//
//    while (stopController.load() == false) {
//        while (stopController.load() == false &&
//               controllerQueue_rx.pop(currentPacket)) {
//            DEBUG << "Controller processing a packet";
//
//            // execute the packet command
//            switch (currentPacket->command) {
//                case CMD_GetData1:
//                    INFO << "Packet command: GetData";
//                    getData();
//                    break;
//                case CMD_GetData2:
//                    ERROR << "Packet command: Reserved";
//                    break;
//                case CMD_GetData3:
//                    ERROR << "Packet command: Reserved";
//                    break;
//                case CMD_GetData4:
//                    ERROR << "Packet command: Reserved";
//                    break;
//                case CMD_GetMin: {
//                        INFO << "Packet command: GetMin";
//                        const int maxCh = 4;
//                        const int incomingDataSize = maxCh;
//                        //calloc to ensure zero
//                        int8_t* outgoingData = (int8_t*) calloc(2*maxCh, sizeof(uint64_t));
//                        if(currentPacket->dataSize != incomingDataSize) {
//                            ERROR << "Unexpected size for GetMin packet";
//                        }
//                        else {
//                            uint64_t* outgoingU = (uint64_t*) outgoingData;
//                            int64_t* outgoingS = (int64_t*) outgoingData;
//                            for(int ch = 0; ch < incomingDataSize; ch++) {
//                                if(currentPacket->data[ch]) {
//                                    int8_t val;
//                                    uint64_t pos;
//                                    getMin(ch + 1, &val, &pos);
//                                    outgoingU[ch] = pos;
//                                    outgoingS[ch + maxCh] = val;
//                                }
//                            }
//                        }
//                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
//                        tempPacket->data = outgoingData;
//                        tempPacket->dataSize = 2*maxCh*sizeof(uint64_t);
//                        tempPacket->packetID = 0;
//                        tempPacket->command = CMD_GetMin;
//                        controllerQueue_tx.push(tempPacket);
//                    }
//                    break;
//                case CMD_GetMax: {
//                        INFO << "Packet command: GetMax";
//                        const int maxCh = 4;
//                        const int incomingDataSize = maxCh;
//                        //calloc to ensure zero
//                        int8_t* outgoingData = (int8_t*) calloc(2*maxCh, sizeof(uint64_t));
//                        if(currentPacket->dataSize != incomingDataSize) {
//                            ERROR << "Unexpected size for GetMin packet";
//                        }
//                        else {
//                            uint64_t* outgoingU = (uint64_t*) outgoingData;
//                            int64_t* outgoingS = (int64_t*) outgoingData;
//                            for(int ch = 0; ch < incomingDataSize; ch++) {
//                                if(currentPacket->data[ch]) {
//                                    int8_t val;
//                                    uint64_t pos;
//                                    getMax(ch + 1, &val, &pos);
//                                    outgoingU[ch] = pos;
//                                    outgoingS[ch + maxCh] = val;
//                                }
//                            }
//                        }
//                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
//                        tempPacket->data = outgoingData;
//                        tempPacket->dataSize = 2*maxCh*sizeof(uint64_t);
//                        tempPacket->packetID = 0;
//                        tempPacket->command = CMD_GetMin;
//                        controllerQueue_tx.push(tempPacket);
//                    }
//                    break;
//                case CMD_SetFile: {
//                        INFO << "Packet command: SetFile";
//                        const int packetSize = 2;
//                        if(currentPacket->dataSize != packetSize) {
//                            ERROR << "Unexpected size for SetFile packet";
//                        }
//                        else {
//                            setFileName(currentPacket->data[0]);
//                        }
//                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
//                        tempPacket->data = NULL;
//                        tempPacket->dataSize = 0;
//                        tempPacket->packetID = 0;
//                        tempPacket->command = CMD_SetFile;
//                        controllerQueue_tx.push(tempPacket);
//                    }
//                    break;
//                case CMD_RampDemo: {
//                        INFO << "Packet command: RampDemo";
//                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
//                        tempPacket->data = (int8_t*) malloc(RD_PACKET_SIZE);
//                        tempPacket->dataSize = RD_PACKET_SIZE;
//                        tempPacket->packetID = 0x11;
//                        tempPacket->command = CMD_RampDemo;
//                        memcpy(tempPacket->data, (const void*)RD_PACKET_ORIGINAL, RD_PACKET_SIZE);
//                        controllerQueue_tx.push(tempPacket);
//                    }
//                    break;
//                case CMD_GetWindowSize: {
//                        INFO << "Packet command: GetWindowSize";
//
//                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
//                        const int packetSize = sizeof(uint32_t);
//                        uint32_t* windata = (uint32_t*) malloc(packetSize);
//                        windata[0] = getWindowSize();
//                        tempPacket->data = (int8_t*) windata;
//                        tempPacket->dataSize = packetSize;
//                        tempPacket->packetID = 0;
//                        tempPacket->command = CMD_GetWindowSize;
//                        controllerQueue_tx.push(tempPacket);
//                    }
//                    break;
//                case CMD_GetCh: {
//                        INFO << "Packet command: GetCh";
//                        const int packetSize = 2;
//                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
//                        tempPacket->data = (int8_t*) malloc(packetSize);
//                        tempPacket->dataSize = packetSize;
//                        tempPacket->packetID = 0;
//                        tempPacket->command = CMD_GetCh;
//                        tempPacket->data[0] = getCh();
//                        tempPacket->data[1] = 0;
//                        controllerQueue_tx.push(tempPacket);
//                    }
//                    break;
//                case CMD_GetLevel: {
//                        INFO << "Packet command: GetLevel";
//                        const int packetSize = 2;
//                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
//                        tempPacket->data = (int8_t*) malloc(packetSize);
//                        tempPacket->dataSize = packetSize;
//                        tempPacket->packetID = 0;
//                        tempPacket->command = CMD_GetLevel;
//                        tempPacket->data[0] = getLevel();
//                        tempPacket->data[1] = 0;
//                        controllerQueue_tx.push(tempPacket);
//                    }
//                    break;
//                case CMD_GetTriggerCh: {
//                        INFO << "Packet command: GetTriggerCh";
//                        const int packetSize = 2;
//                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
//                        tempPacket->data = (int8_t*) malloc(packetSize);
//                        tempPacket->dataSize = packetSize;
//                        tempPacket->packetID = 0;
//                        tempPacket->command = CMD_GetTriggerCh;
//                        tempPacket->data[0] = getTriggerCh();
//                        tempPacket->data[1] = 0;
//                        controllerQueue_tx.push(tempPacket);
//                    }
//                    break;
//                case CMD_GetEdgeType: {
//                        INFO << "Packet command: GetEdgeType";
//                        const int packetSize = 2;
//                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
//                        tempPacket->data = (int8_t*) malloc(packetSize);
//                        tempPacket->dataSize = packetSize;
//                        tempPacket->packetID = 0;
//                        tempPacket->command = CMD_GetEdgeType;
//                        tempPacket->data[0] = getEdgeType() ? 1 : 2;
//                        tempPacket->data[1] = 0;
//                        controllerQueue_tx.push(tempPacket);
//                    };
//                    break;
//                case CMD_SetWindowSize: {
//                        INFO << "Packet command: SetWindowSize";
//                        const int packetSize = 4;
//                        if(currentPacket->dataSize != packetSize) {
//                            ERROR << "Unexpected size for SetWindowSize packet";
//                        }
//                        else {
//                            uint32_t* windowSize = (uint32_t*)currentPacket->data;
//                            setWindowSize(windowSize[0]);
//                        }
//                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
//                        tempPacket->data = NULL;
//                        tempPacket->dataSize = 0;
//                        tempPacket->packetID = 0;
//                        tempPacket->command = CMD_SetWindowSize;
//                        controllerQueue_tx.push(tempPacket);
//                    }
//                    break;
//                case CMD_SetCh: {
//                        INFO << "Packet command: SetCh";
//                        const int packetSize = 4;
//                        if(currentPacket->dataSize != packetSize) {
//                            ERROR << "Unexpected size for SetCh packet";
//                        }
//                        else {
//                            int chCount = 0;
//                            for(int i = 0; i < 4; i++) {
//                                if(currentPacket->data[i]) {
//                                    chCount++;
//                                }
//                            }
//                            if(chCount == 1 || chCount == 2 || chCount == 4) {
//                                setCh(chCount);
//                            }
//                            else if (chCount == 3){
//                                setCh(4);
//                            }
//                            else {
//                                ERROR << "Bad chCount for SetCh";
//                            }
//#ifndef NOHARDWARE
//                            for(int i = 0; i < 4; i++) {
//                                if(currentPacket->data[i]) {
//                                    hardWareCommand((int)enable_channel, i, 0, 0);
//                                }
//                                else {
//                                    hardWareCommand((int)disable_channel, i, 0, 0);
//                                }
//                            }
//#endif
//                        }
//                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
//                        tempPacket->data = NULL;
//                        tempPacket->dataSize = 0;
//                        tempPacket->packetID = 0;
//                        tempPacket->command = CMD_SetCh;
//                        controllerQueue_tx.push(tempPacket);
//                    }
//                    break;
//                case CMD_SetLevel: {
//                        INFO << "Packet command: SetLevel";
//                        const int packetSize = 2;
//                        if(currentPacket->dataSize != packetSize) {
//                            ERROR << "Unexpected size for SetLevel packet";
//                        }
//                        else {
//                            int8_t level = currentPacket->data[0];
//                            setLevel(level);
//                        }
//                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
//                        tempPacket->data = NULL;
//                        tempPacket->dataSize = 0;
//                        tempPacket->packetID = 0;
//                        tempPacket->command = CMD_SetLevel;
//                        controllerQueue_tx.push(tempPacket);
//                    }
//                    break;
//                case CMD_SetTriggerCh: {
//                        INFO << "Packet command: SetTriggerCh";
//                        const int packetSize = 2;
//                        if(currentPacket->dataSize != packetSize) {
//                            ERROR << "Unexpected size for SetTriggerCh packet";
//                        }
//                        else {
//                            int8_t triggerCh = currentPacket->data[0];
//                            if(triggerCh > 4) {
//                                //Other conditions??
//                                ERROR << "Unexpected triggerCh";
//                            }
//                            else {
//                                setTriggerCh(triggerCh);
//                            }
//                        }
//                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
//                        tempPacket->data = NULL;
//                        tempPacket->dataSize = 0;
//                        tempPacket->packetID = 0;
//                        tempPacket->command = CMD_SetLevel;
//                        controllerQueue_tx.push(tempPacket);
//                    }
//                    break;
//                case CMD_SetEdgeType: {
//                        INFO << "Packet command: SetEdgeType";
//                        const int packetSize = 2;
//                        if(currentPacket->dataSize != packetSize) {
//                            ERROR << "Unexpected size for SetEdgeType packet";
//                        }
//                        else {
//                            int8_t edgeType = currentPacket->data[0];
//                            if(edgeType == 1) {
//                                setRising();
//                            }
//                            else if(edgeType == 2) {
//                                setFalling();
//                            }
//                            else {
//                                ERROR << "Unexpected edgeType";
//                            }
//                        }
//                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
//                        tempPacket->data = NULL;
//                        tempPacket->dataSize = 0;
//                        tempPacket->packetID = 0;
//                        tempPacket->command = CMD_SetEdgeType;
//                        controllerQueue_tx.push(tempPacket);
//                    }
//                    break;
//                case CMD_SetVerticalScaling: {
//                        INFO << "Packet command: SetVerticalScaling";
//                        const int packetSize = 4;
//                        if(currentPacket->dataSize != packetSize) {
//                            ERROR << "Unexpected size for SetVerticalScaling packet";
//                        }
//                        else {
//                            int16_t* data16 = (int16_t*) currentPacket->data;
//                            int ch = data16[0];
//                            int millivoltPerDiv = data16[1];
//                            if(ch < 1 || ch > 4) {
//                                ERROR << "Bad channel for SetVerticalScaling";
//                            }
//                            if(millivoltPerDiv < 0 || millivoltPerDiv > 10000) {
//                                ERROR << "Bad millivoltPerDiv for SetVerticalScaling";
//                            }
//#ifndef NOHARDWARE
//                            hardWareCommand((int)voltage_divison_set, ch-1, millivoltPerDiv, 0);
//#endif
//                        }
//                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
//                        tempPacket->data = NULL;
//                        tempPacket->dataSize = 0;
//                        tempPacket->packetID = 0;
//                        tempPacket->command = CMD_SetEdgeType;
//                        controllerQueue_tx.push(tempPacket);
//                    }
//                    break;
//                case CMD_SetMath: {
//                        INFO << "Packet command: SetMath";
//                        const int packetSize = 4;
//                        if(currentPacket->dataSize != packetSize) {
//                            ERROR << "Unexpected size for SetMath packet";
//                        }
//                        else {
//                            int8_t lhsChan = currentPacket->data[0];
//                            int8_t rhsChan = currentPacket->data[1];
//                            int8_t op = currentPacket->data[2];
//
//                            //JS and C++ might not encode these vars the same
//                            if(op == 0) {
//                                lhsChan = -1;
//                                rhsChan = -1;
//                            }
//                            //Do something with these.
//                            setMathCh_1(lhsChan);
//                            setMathCh_2(rhsChan);
//                            setMathSign(op == 1);
//                        }
//                        EVPacket* tempPacket = (EVPacket*) malloc(sizeof(EVPacket));
//                        tempPacket->data = NULL;
//                        tempPacket->dataSize = 0;
//                        tempPacket->packetID = 0;
//                        tempPacket->command = CMD_SetMath;
//                        controllerQueue_tx.push(tempPacket);
//                    }
//                    break;
//                default:
//                    ERROR << "Unknown packet command";
//                    break;
//            }
//
//        }
//
//        //Sleep, but don't oversleep
//        std::this_thread::sleep_for(std::chrono::microseconds(250));
//    }
}

/*******************************************************************************
 * controllerPause()
 *
 * Pauses the pipeline.
 * Calls pause on each of the stages of the pipeline
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
void controller::controllerPause()
{
    DEBUG << "Pausing pipeline";
    processorThread->processorPause();
    triggerThread->triggerPause();
    postProcessorThread->postProcessorPause();
#ifndef NOHARDWARE
    pcieLinkThread->Pause();
#endif
}

/*******************************************************************************
 *  controllerUnPause()
 *
 * unpauses the dsp pipeline.
 * Calls unpause on each of the stages of the pipeline
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
void controller::controllerUnPause()
{
    DEBUG << "Unpausing pipeline";
    processorThread->processorUnpause();
    triggerThread->triggerUnpause();
    postProcessorThread->postProcessorUnpause();
#ifndef NOHARDWARE
    pcieLinkThread->UnPause();
#endif
}

/*******************************************************************************
 * controllerFlush()
 *
 * Flushes all data out of the pipeline.
 * Pauses the pipeline until its done clearing all queues.
 * Resets the persistence buffer.
 *
 * Arguments:
 *   None
 * Return:
 *   None
 ******************************************************************************/
void controller::controllerFlush()
{
    INFO << "Flushing pipeline";
    // pause while flusing
    controllerPause();

    // Clear queues
    size_t count = 0;
    count = (*dataQueue).consume_all(bufferFunctor);
    DEBUG << "Flushed inputQueue: " << count;

    count = triggerProcessorQueue.consume_all(bufferFunctor);
    DEBUG << "Flushed triggeredQueue: " << count;

    // Clear persistence buffer
    processorThread->flushPersistence();
    DEBUG << "Flushed persistence buffer";
//    count = preProcessorQueue.consume_all(bufferFunctor);
//    DEBUG << "Flushed preProcessorQueue: " << count;

    count = processorPostProcessorQueue_1.consume_all(free);
    DEBUG << "Flushed postProcessorQueue: " << count;
}

/*******************************************************************************
 * getTriggerLevel()
 *
 * returns the trigger level.
 *
 * Arguments:
 *   int8_t newLevel - New level for the trigger function
 * Return:
 *   None
 ******************************************************************************/
int8_t controller::getLevel()
{
    return triggerThread->getTriggerLevel();
}

/*******************************************************************************
 * setTriggerLevel()
 *
 * flushes the pipeline and sets a new trigger level.
 *
 * Arguments:
 *   int8_t newLevel - New level for the trigger function
 * Return:
 *   None
 ******************************************************************************/
void controller::setLevel( int8_t newLevel )
{
    triggerLevel = newLevel;

    triggerThread->setTriggerLevel(triggerLevel);

    INFO << "new trigger level: " << (int)triggerThread->getTriggerLevel();

    controllerFlush();
}

/*******************************************************************************
 * getCh()
 *
 * gets the number of channels on each stage of the pipeline.
 *
 * Arguments:
 *   None
 * Return:
 *   int8_t - The number of channels as set in the trigger thread;
 ******************************************************************************/
int8_t controller::getCh()
{
    return triggerThread->getCh();
}

/*******************************************************************************
 * setCh()
 *
 * sets the number of channels on each stage of the pipeline.
 *
 * Arguments:
 *   int8_t newCh - desired number of channels;
 * Return:
 *   None
 ******************************************************************************/
void controller::setCh(int8_t newCh)
{
    controllerPause();

    // If the trigger channel will nolonger be active
    if (getTriggerCh() + 1 > newCh){
        // Set the trigger ch to ch 1
        setTriggerCh(1);
    }

    triggerThread->setCh(newCh);
    processorThread->setCh(newCh);
    postProcessorThread->setCh(newCh);

    controllerFlush();
}

/*******************************************************************************
 * getTriggerCh()
 *
 * get Trigger channel.
 *
 * Arguments:
 *   None
 * Return:
 *   int8_t - current trigger channel as known by the trigger thread;
 *            This value is 0 - 3.
 ******************************************************************************/
int8_t controller::getTriggerCh()
{
    return triggerThread->getTriggerCh();
}

/*******************************************************************************
 * setTriggerCh()
 *
 * set Trigger channel.
 *
 * Arguments:
 *   int8_t newTriggerCh - desired trigger channel;
 * Return:
 *   None
 ******************************************************************************/
void controller::setTriggerCh(int8_t newTriggerCh)
{
    controllerPause();

    triggerThread->setTriggerCh(newTriggerCh);

    controllerFlush();
}

/*******************************************************************************
 * getEdgeType()
 *
 * gets the type of edge.
 *
 * Arguments:
 *   int8_t newTriggerCh - desired trigger channel;
 * Return:
 *   bool - true for rising edge, false for falling edge
******************************************************************************/
bool controller::getEdgeType()
{
    return triggerThread->getEdgeType();
}

/*******************************************************************************
 * setRising()
 *
 * sets edge type to rising edge.
 *
 * Arguments:
 *   None
 * Return:
 *   None
******************************************************************************/
void controller::setRising()
{
    controllerPause();

    triggerThread->setRising();

    controllerFlush();
}

/*******************************************************************************
 * setFalling()
 *
 * sets edge type to falling edge.
 *
 * Arguments:
 *   None
 * Return:
 *   None
******************************************************************************/
void controller::setFalling()
{
    controllerPause();

    triggerThread->setFalling();

    controllerFlush();
}

/*******************************************************************************
 * getWindowSize()
 *
 * returns the size of the window.
 *
 * Arguments:
 *   None
 * Return:
 *   uint32_t - current window size
******************************************************************************/
uint32_t controller::getWindowSize()
{
    return windowSize;
}

/*******************************************************************************
 * setWindowSize()
 *
 * sets the windowsize.
 *
 * Arguments:
 *   uint32_t newSize - New size to set the window to
 * Return:
 *   None
******************************************************************************/
void controller::setWindowSize(uint32_t newSize)
{
    controllerPause();

    windowSize = newSize;

    controllerFlush();
}

/*******************************************************************************
 * getPerSize()
 *
 * gets the side of the persistence buffer.
 *
 * Arguments:
 *   None
 * Return:
 *   uint32_t - Size of the persistence buffer
******************************************************************************/
uint32_t controller::getPerSize()
{
    return persistanceSize;
}

/*******************************************************************************
 * setPerSize()
 *
 * sets the side of the persistence buffer.
 *
 * Arguments:
 *   uint32_t newSize - New size to set the persistence buffer to
 * Return:
 *   None
******************************************************************************/
void controller::setPerSize(uint32_t newSize)
{
    controllerPause();

    persistanceSize = newSize;

    controllerFlush();
}

void controller::getMax(int8_t chNum, int8_t* value, uint64_t* pos)
{
    processorThread->getMax(chNum, value, pos);
}

void controller::getMin(int8_t chNum, int8_t* value, uint64_t* pos)
{
    processorThread->getMin(chNum, value, pos);
}

void controller::reProcess()
{
    processorThread->reProcess();
}

void controller::setMathCh_1(int8_t newCh)
{
    postProcessorThread->setMathCh_1(newCh);
}

void controller::setMathCh_2(int8_t newCh)
{
    postProcessorThread->setMathCh_2(newCh);
}

void controller::setMathSign(bool newSign)
{
    postProcessorThread->setMathSign(newSign);
}

void controller::getData()
{
    // flush buffers
    controllerFlush();
    // unpause
    controllerUnPause();

#ifdef NOHARDWARE
    if (inputFile != NULL) {
        loadFromFile(inputFile, dataQueue);
    }
#endif
}

void controller::setFileName(int8_t newFile)
{
    std::string newName = "./test/test1.csv";
    switch (newFile) {
        case 1:
            newName = "./test/test1.csv";
            break;
        case 2:
            newName = "./test/test2.csv";
            break;
        case 3:
            newName = "./test/test3.csv";
            break;
        case 4:
            newName = "./test/test4.csv";
            break;
        case 5:
            newName = "./test/test5.csv";
            break;
        case 6:
            newName = "./test/test6.csv";
            break;
        case 72:
            newName = "./test/test7-2ch.csv";
            break;
        case 74:
            newName = "./test/test7-4ch.csv";
            break;
        case 8:
            newName = "./test/test8.csv";
            break;
        case 91:
            newName = "./test/test9-max.csv";
            break;
        case 92:
            newName = "./test/test9-min.csv";
            break;
        default:
            newName = "./test/test1.csv";
    }
    char* filename = (char*)malloc(newName.size() + 1);
    std::strcpy(filename, newName.c_str());
    free(inputFile);
    inputFile = filename;
}

#ifndef NOHARDWARE
void controller::hardWareCommand(int command, int channel, int val1, double val2) {
    ScopeCommand cmd = static_cast<ScopeCommand>(command);

    switch(cmd) {
        case init_board:

        break;
        case adc_enable_ramp_test:

        break;
        case dataMover_enable:

        break;
        case dataMover_disable:

        break;
        case test_write:

        break;
        case enable_channel:
            pcieLinkThread->Write(cmd,(void*)&channel);
        break;
        case disable_channel:
            pcieLinkThread->Write(cmd,(void*)&channel);
        break;
        case ac_couple:
            pcieLinkThread->Write(cmd,(void*)&channel);
        break;
        case dc_couple:
            pcieLinkThread->Write(cmd,(void*)&channel);
        break;
        case voltage_divison_set:
        {
            VoltageDivSetParam param;
            param.ch_num = channel;
            param.voltage_div = val1;
            pcieLinkThread->Write(cmd,(void*)&param);
        }
        break;
        case voltage_offset_set:
        {
            VoltageOffsetParam param;
            param.ch_num = channel;
            param.voltage = val2;
            pcieLinkThread->Write(cmd,(void*)&param);
        }
        break;
        case bandwidth_set:
        {
            BandwidthSetParam param;
            param.ch_num = channel;
            param.bw = val1;
            pcieLinkThread->Write(cmd,(void*)&param);
        }
        break;
        default:

        break;
    }
}
#endif


#ifndef NOHARDWARE
void controller::testADCData() {
    pcieLinkThread->Write(test_adc_data,nullptr);
}
#endif

/**
	@brief Sends a SCPI reply (terminated by newline)
 */
bool ScpiSend(Socket& sock, const string& cmd)
{
	string tempbuf = cmd + "\n";
	return sock.SendLooped((unsigned char*)tempbuf.c_str(), tempbuf.length());
}

/**
	@brief Reads a SCPI command (terminated by newline or semicolon)
 */
bool ScpiRecv(Socket& sock, string& str)
{
	int sockid = sock;

	char tmp = ' ';
	str = "";
	while(true)
	{
		if(1 != recv(sockid, &tmp, 1, MSG_WAITALL))
			return false;

		if( (tmp == '\n') || ( (tmp == ';') ) )
			break;
		else
			str += tmp;
	}

	return true;
}

/**
	@brief Parses an incoming SCPI command
 */
void ParseScpiLine(const string& line, string& subject, string& cmd, bool& query, vector<string>& args)
{
	//Reset fields
	query = false;
	subject = "";
	cmd = "";
	args.clear();

	string tmp;
	bool reading_cmd = true;
	for(size_t i=0; i<line.length(); i++)
	{
		//If there's no colon in the command, the first block is the command.
		//If there is one, the first block is the subject and the second is the command.
		//If more than one, treat it as freeform text in the command.
		if( (line[i] == ':') && subject.empty() )
		{
			subject = tmp;
			tmp = "";
			continue;
		}

		//Detect queries
		if(line[i] == '?')
		{
			query = true;
			continue;
		}

		//Comma delimits arguments, space delimits command-to-args
		if(!(isspace(line[i]) && cmd.empty()) && line[i] != ',')
		{
			tmp += line[i];
			continue;
		}

		//merge multiple delimiters into one delimiter
		if(tmp == "")
			continue;

		//Save command or argument
		if(reading_cmd)
			cmd = tmp;
		else
			args.push_back(tmp);

		reading_cmd = false;
		tmp = "";
	}

	//Stuff left over at the end? Figure out which field it belongs in
	if(tmp != "")
	{
		if(cmd != "")
			args.push_back(tmp);
		else
			cmd = tmp;
	}
}
