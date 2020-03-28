#!/bin/bash
TERM=xterm
args=("$@")

case "$args" in

"Monitor") 
	echo "Docker ps -a"
	docker stats
	echo "Done"
    	;;
"Restart")
	echo "Rebooting..."
	systemctl restart docker
	;;
*) echo 
   	;;
esac 
