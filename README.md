//============== Project Description ==================//

This is a sample test for linux system to listen TCP packet in LAN.
In this test, it only to capture 10 packets and save payload into a txt file which name as payload.txt

//============== File ==================//

1. sniffer_tcp.c : the source code for listen TCP packet.
2. Makefile      : the file to compile sniffer_tcp.c
3. Test.sh       : The shell script to execute this test.
4. readme.txt    : the file you are reading now which is introducing this project.

//============== Preliminary Work ==================//

1. This test will using the library of pcap, please dwonload the libcap and install in your linux system.
2. Please add two line into your /etc/ld.so.conf and set command "ldconfig":
a. /usr/local/lib
b. /usr/lib


//============== Test Step ==================//

1. In the folder with those file, set command "make" to compile sniffer_tcp.c for creating a execution file.
2. Executing  ./Test.sh, if payload.txt is modified, it will show the current result of payload.txt

//============== Note ==================//

1. The enp0s3 is the interface for my linux network, 
   User need to change the interface which the network they using in Test.sh
2. Currently, because the code only to capture 10 times packet which not only for TCP, so the test is easy to go ending.
