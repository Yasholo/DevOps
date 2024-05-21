#!/usr/bin/bash

#echo "write a shell programm to print host name, current user, current date, ip address of your system."

#Variable assignment
#Show hostname:
HOST=$(hostname)
#User executing the script:
CURRENTUSER=$(whoami)
#current date:
CURRENTDATE=$(date +%F)
#Host IP Address:
IPADDRESS=$(hostname -I | cut -d ' ' -f1)
#Show Messages
echo "Today is $CURRENTDATE"
echo "Hostname: $HOST ($IPADDRESS)"
echo "User info for $CURRENTUSER:"
grep $CURRENTUSER /etc/passwd
echo $IPADDRESS
#current process id: [echo $$]
echo "Current Process ID: $$"


