#!/bin/bash
args=("$@")
logfile="/var/plexguide/logs/rclone-tdrive.log"

case "$args" in

"Tail Log") 
	echo "Tailing $logfile"
	tail -f $logfile
    	;;
"Clear Log")
	echo "Truncating $logfile"
    	truncate -s 0 $logfile
	echo "Done"
	;;
*) echo 
   	;;
esac 
