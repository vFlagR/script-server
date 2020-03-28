#!/bin/bash
args=("$@")

case "$args" in

"Update") 
	echo "Updating..."
	apt update -y && apt upgrade -y && apt dist-upgrade -y 	
	echo "Done"
    	;;
"Reboot")
	echo "Rebooting..."
	reboot
	;;
*) echo 
   	;;
esac 
