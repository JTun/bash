#!/bin/bash
#Check if Port 22 is up
for i in $(cat hosts.sh) ; do nc -z $i 22 ; done

# then do ssh
for host in $(cat hosts.sh); do ssh -i ~/Downloads/fullstack.pem ec2-user@$host "/sbin/ifconfig"; done