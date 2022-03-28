#!/bin/bash
#This script starts the netcat listener on a specific port

echo "What port should we listen on?"
read LPORT
echo "Press [Enter] to start listener"
read enter
nc -lvnp $LPORT
