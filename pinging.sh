#!/bin/bash

# Obtain the first 3 octets of the ip address of the connected network then storing the octets in the file called octets.txt : 
ifconfig | grep "broadcast" | cut -d " " -f 10 | cut -d "." -f 1,2,3 | uniq > octets.txt

# Set a variable container thevalue of octets.txt :
OCTETS=$(cat octets.txt)

#create a new txt file :
echo "" > $OCTETS.txt

#loop through the different hostbits :
for ip in {1..254}
do
	ping -c 1 $OCTETS.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" >> $OCTETS.txt &
done

cat $OCTETS.txt | sort > sorted_$OCTETS.txt

# Scan the ips :
nmap -sS -iL sorted_$OCTETS.txt

exit
 

