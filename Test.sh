#! /bin/sh


if [ -f "payload.txt" ]; then
	echo "payload.txt is already exist."
else
	touch payload.txt
fi

./sniffer_tcp enp0s3 &

while true
do
  MODEDATE=$(stat -c %y  payload.txt)

if [ "$MODEDATE" != "$LASTDATE" ]; then
	cat payload.txt
fi
  
  LASTDATE=$(stat -c %y  payload.txt)
  sleep 2
done



