#ifndef BRIDGE_HPP
#define BRIDGE_HPP

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <cerrno>
#include <thread>
#include <queue>
#include <mutex>
#include <iostream>
#include <atomic>
#include "common.hpp"

#ifdef WIN32 //for windows use named pipes
#include <windows.h>
#include <tchar.h>
#include <strsafe.h>
#else //for unix systems use unix sockets
#include <sys/socket.h>
#include <netinet/in.h>
#include <sys/un.h>
#include <unistd.h>
#endif

#define BRIDGE_BUFFER_SIZE (1 << 23)
#define END_PACKET_COMMAND 0xEF
#define END_PACKET_PACKETID 0xAB
#define END_PACKET_DATA_SIZE 0x00

inline void FreePacket(EVPacket* packet);

void PrintPacket(EVPacket* packet);

class Bridge {
private:

    const char tx_connection_string[100] = {};
    const char rx_connection_string[100] = {};
    char* tx_buff;
    char* rx_buff;
    char* tx_test_buff;
    char* rx_test_buff;
#ifdef WIN32
    HANDLE tx_hPipe;
    HANDLE rx_hPipe;
    const char* base_path = "\\\\.\\pipe\\";
#else
    int tx_sock;
    int rx_sock;
    int client_tx_sock;
    int client_rx_sock;
    const char* base_path = "/tmp/";
#endif
    char* txBuff;
    char* rxBuff;
    std::thread tx_worker;
    std::thread rx_worker;

    // Queue to JS
    boost::lockfree::queue<EVPacket*, boost::lockfree::fixed_sized<false>> *txQueue;

    // Queue from JS
    boost::lockfree::queue<EVPacket*, boost::lockfree::fixed_sized<false>> *rxOutputQueue;

    std::atomic<bool> rx_run;
    std::atomic<bool> tx_run;
    void TxJob();
    void RxJob();

    int makeConnection( int targetSocket );

public:

    Bridge(const char* pipeName,
           boost::lockfree::queue<EVPacket*, boost::lockfree::fixed_sized<false>> *txQueue,
           boost::lockfree::queue<EVPacket*, boost::lockfree::fixed_sized<false>> *outputQ
           );
    ~Bridge();

    int TxStart();
    int RxStart();
    int TxStop();
    int RxStop();

    int InitTxBridge();
    int InitRxBridge();
    int InitTxTestBridge();
    int InitRxTestBridge();

#ifdef WIN32
    EVPacket ReadPacket(HANDLE hPipe);
    void SendPacket(HANDLE hPipe, EVPacket packet);
    HANDLE tx_test_hPipe;
    HANDLE rx_test_hPipe;
#else
    EVPacket ReadPacket(int sock);
    void SendPacket(int sock, EVPacket packet);
    int tx_test_sock;
    int rx_test_sock;
#endif

    void push(EVPacket* newPacket);

protected:

};

#endif
