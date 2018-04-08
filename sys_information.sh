#!/bin/bash
#Script to print brief system info
ROOT_ID="0"
DATE=`date`
UPTIME=`uptime`
NO_USERS=`who | wc -l`
isRoot(){
	echo "UUID= $UID"
	echo "ROOT_ID= $ROOT_ID"
	if [ "$UID" -ne "$ROOT_ID" ]; then
		echo "You ${ROOT_ID} are not root to execute this program"
		exit 1;
	fi;
}
print_sys_information(){
	echo "System time: $DATE "
	echo "System Uptime: $UPTIME"
}
isRoot
print_sys_information
exit 0
