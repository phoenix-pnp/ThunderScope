#ifndef waveformServerThread_hpp
#define waveformServerThread_hpp

#include <thread>

// TODO: Cleanup includes
#include "common.hpp"


class waveformServer
{
	public:
		waveformServer(boost::lockfree::queue<int8_t*, boost::lockfree::fixed_sized<false>> *inputQ);
		~waveformServer();
	private:
		void coreLoop();
		std::thread dataThread;
		volatile bool g_waveformThreadQuit;
		boost::lockfree::queue<int8_t*, boost::lockfree::fixed_sized<false>> *inputQueue;
};

#endif
