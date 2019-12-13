sniffer_tcp: sniffer_tcp.c
	gcc -o sniffer_tcp sniffer_tcp.c -lpcap
clean:
	rm -f sniffer_tcp
