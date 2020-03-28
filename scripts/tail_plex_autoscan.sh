#!/bin/bash
args=("$@")
root="/opt/plex_autoscan/"
logfile="plex_autoscan.log"

case "$args" in

"Tail Log")
        echo "Tailing $root$logfile"
        tail -f $root$logfile
        ;;
"Clear Logs")
	echo "Running..."
        rm -rf $root$logfile.*
	ls -larth $root*.log
        echo "Done"
        ;;
*) echo
        ;;
esac
