#include "controller.hpp"
#include "logger.hpp"

controller::controller(boost::lockfree::queue<buffer*, boost::lockfree::fixed_sized<false>> *inputQ)
{
    dataQueue = inputQ;
    stopController.store(false);

    // command packet parser thread
    controllerThread = std::thread(&controller::controllerLoop, this);

    // Bridge to JS
    bridgeThread = new Bridge("testPipe", &controllerQueue_tx, &controllerQueue_rx);
    bridgeThread->TxStart();
    bridgeThread->RxStart();

    // Create pipeline threads
    triggerThread = new Trigger(dataQueue, &triggerProcessorQueue, triggerLevel);
    processorThread = new Processor(&triggerProcessorQueue, &processorPostProcessorQueue_1);
    postProcessorThread = new postProcessor(&processorPostProcessorQueue_1, &controllerQueue_tx);

    // set default values
    setCh(1);
    setTriggerCh(1);
    setLevel(50);

    INFO << "Controller Created";
}

controller::~controller()
{
    stopController.store(true);
    controllerThread.join();

    delete triggerThread;
    delete processorThread;
    delete postProcessorThread;
    delete bridgeThread;

    INFO << "Controller Destroyed";
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
    EVPacket* currentPacket;

    while (stopController.load() == false) {
        while (stopController.load() == false &&
               controllerQueue_rx.pop(currentPacket)) {
            INFO << "Controller processing a packet";

            // execute the packet command
            switch (currentPacket->command) {
                case 1:
                    INFO << "Packet command 1";
                    break;
                case 2:
                    INFO << "Packet command 2";
                    break;
                default:
                    ERROR << "Unknown packet command";
                    break;
            }

        }

        std::this_thread::sleep_for(std::chrono::milliseconds(100));
    }
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
    INFO << "Pausing pipeline";
    processorThread->processorPause();
    triggerThread->triggerPause();
    postProcessorThread->postProcessorPause();
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
    INFO << "Unpausing pipeline";
    processorThread->processorUnpause();
    triggerThread->triggerUnpause();
    postProcessorThread->postProcessorUnpause();
}

/*******************************************************************************
 * bufferFunctor()
 *
 * deallocates the buffer passed to it.
 *
 * Arguments:
 *   buffer* a - The buffer to deallocate
 * Return:
 *   None
 ******************************************************************************/
void bufferFunctor(buffer* a) {
    bufferAllocator.deallocate(a, 1);
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
    INFO << "Flushed inputQueue: " << count;

    count = triggerProcessorQueue.consume_all(bufferFunctor);
    INFO << "Flushed triggeredQueue: " << count;

    // Clear persistence buffer
    processorThread->flushPersistence();
    INFO << "Flushed persistence buffer";
//    count = preProcessorQueue.consume_all(bufferFunctor);
//    INFO << "Flushed preProcessorQueue: " << count;

    count = processorPostProcessorQueue_1.consume_all(free);
    INFO << "Flushed postProcessorQueue: " << count;
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

    INFO << "new trigger level: " << triggerThread->getTriggerLevel();

    controllerFlush();
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
void controller::setCh (int8_t newCh)
{
    controllerPause();

    triggerThread->setCh(newCh);
    processorThread->setCh(newCh);
    postProcessorThread->setCh(newCh);

    controllerFlush();
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
void controller::setTriggerCh (int8_t newTriggerCh)
{
    controllerPause();

    triggerThread->setTriggerCh(newTriggerCh);

    controllerFlush();
}

void controller::setRising()
{
    controllerPause();

    triggerThread->setRising();

    controllerFlush();
}

void controller::setFalling()
{
    controllerPause();

    triggerThread->setFalling();

    controllerFlush();
}