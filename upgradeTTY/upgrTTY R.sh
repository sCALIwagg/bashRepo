#!/bin/bash
#A script to upgrade the TTY shell on the [R]emote host.
#This script is meant to be run fist

python -c 'import pty; pty.spawn("/bin/bash")'
