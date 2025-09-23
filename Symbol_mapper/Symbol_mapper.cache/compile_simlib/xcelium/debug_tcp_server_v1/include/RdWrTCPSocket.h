
/*  (c) Copyright 2014 - 2019 Xilinx, Inc. All rights reserved.

 This file contains confidential and proprietary information
 of Xilinx, Inc. and is protected under U.S. and
 international copyright and other intellectual property
 laws.

 DISCLAIMER
 This disclaimer is not a license and does not grant any
 rights to the materials distributed herewith. Except as
 otherwise provided in a valid license issued to you by
 Xilinx, and to the maximum extent permitted by applicable
 law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
 WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
 AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
 BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
 INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
 (2) Xilinx shall not be liable (whether in contract or tort,
 including negligence, or under any other theory of
 liability) for any loss or damage of any kind or nature
 related to, arising under or in connection with these
 materials, including for any direct, or any indirect,
 special, incidental, or consequential loss or damage
 (including loss of data, profits, goodwill, or any type of
 loss or damage suffered as a result of any action brought
 by a third party) even if such damage or loss was
 reasonably foreseeable or Xilinx had been advised of the
 possibility of the same.

 CRITICAL APPLICATIONS
 Xilinx products are not designed or intended to be fail-
 safe, or for use in any application requiring fail-safe
 performance, such as life-support or safety devices or
 systems, Class III medical devices, nuclear facilities,
 applications related to the deployment of airbags, or any
 other applications that could lead to death, personal
 injury, or severe property or environmental damage
 (individually and collectively, "Critical
 Applications"). Customer assumes the sole risk and
 liability of any use of Xilinx products in Critical
 Applications, subject only to applicable laws and
 regulations governing limitations on product liability.

 THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
 PART OF THIS FILE AT ALL TIMES.                       */

/*
 * This file contains a class RdWrTCPSocket, with all member functions and data members used to set up TCP server.
 * Included file rwd_packet.h defines a common structure(rwd_packet) between TCP server and XTLM APIs.
 * TCP Server expects response to be communicated via same struct, each command should have only 1 response.
 */

/* 
 * File:   RdWrTCPSocket.h
 * Author: tarunp
 * Created on August 30, 2018, 4:31 PM
 */

#ifndef RDWRTCPSOCKET_H
#define RDWRTCPSOCKET_H
#if defined(_WIN32) && defined(__MINGW32__)// Dummy implementation for windows
#ifdef RWD_TCP_DDL_EXP
#define RWD_TCP_API __declspec( dllexport )
#else
#define RWD_TCP_API __declspec( dllimport )
#endif
class RWD_TCP_API RdWrTCPSocket {
public:
	RdWrTCPSocket(unsigned short int tcp_port = 10100);
	~RdWrTCPSocket();
	void StartTCPServer();
};
#else

/********************************************* INCLUDE FILES *******************************************************/

#include <sys/types.h> 
#include <sys/socket.h> 
#include <netdb.h>  
#include <cstring> 
#include <cstdio> 
#include <cstdlib> 
#include <cerrno>
#include <arpa/inet.h> 
#include <netinet/in.h>  
#include <string>
#include <vector>
#include <iterator>
#include <sstream>
#include <iomanip>
#include <iostream>
#include<unistd.h>
#include "rwd_packet.h"

/********************************************* MACRO DEFINITION ******************************************************/

#define BACKLOG 10 
#define BUFFER_SIZE 512

/*********************************************************************************************************************/

class RdWrTCPSocket {
public:

	RdWrTCPSocket(unsigned short int tcp_port = 10100);
	~RdWrTCPSocket();

	/*Member Function*/
	/* Single API to be called to start TCP server */
	void StartTCPServer();

private:
	/*Member Functions*/

	/* Sets up the linked-list res with results which will
	 * be needed later on, using hints as relevant input*/
	void setServerInfo();

	/* Binds to the socket descriptor returned by socket()*/
	void SocketbindPort();

	/*Associates a socket with a port and listens for incoming connections*/
	void Listen();

	/*Accepts the pending connection and provides a new socket file descriptor
	 * that can be used for send/receive, also sends magic word "XilinxSimpleMemoryServer"
	 * to client*/
	void Accept();

	/* Performs send/receive in while(1), and sets up structure that should be used by
	 * APIs to convert data to XTLM. Also sends response to client depending on return response
	 * from XTLM APIs.
	 * Takes multiple data request from sdx_server exceeding 512 bytes and forms a single command
	 * with total data till \n delimiter.
	 * Expects 1 response from XTLM for 1 command.
	 */
	void DataTransfer();

	/* Helper Functions */
	void *get_in_addr(struct sockaddr *socket_addr);
	void processCmdString(std::string & CmdString);
	void setMembers(const std::vector<std::string> &CmdElems);

	/*Data members*/
	struct addrinfo hints;
	struct addrinfo *res;
	int sockfd;
	struct sockaddr_storage client_addr;
	int newfd;
	char buffer[BUFFER_SIZE];
	std::string ReqFromClient;
	std::vector<std::string> elems;
	std::string RspToClient;
	char *WrDataToSlave;
	char PORT[10]; // Max is 65535 - 5 length
	struct rwd_packet request;
};
#endif /*#if defined(_WIN32) && defined(__MINGW32__)*/

#endif /* RDWRTCPSOCKET_H */



