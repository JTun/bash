#!/bin/bash

# Gather all kernel "fail" messages from your mac os from /var/log/system.log
# and put them into a file called mac_failed.log
# new log file will be under /users/localadmin folder
 # * * cat /var/log/system.log
grep "Endpoint" /var/log/system.log >> mac_failed.log
#Archive the mac_failed.log using tar command
tar -czf archive_macfailed.tar mac_failed.log
#Copy this file into ec2 boxes ( all 3 boxes ) in ec2-user home folder
#scp -i ~/Downloads/fullstack.pem archivefile.tar ec2-user@ec2-18-233-97-155.compute-1.amazonaws.com:
scp -i ~/Downloads/fullstack.pem archive_macfailed.tar ec2-user@ec2-18-233-97-155.compute-1.amazonaws.com:
scp -i ~/Downloads/fullstack.pem archive_macfailed.tar ec2-user@ec2-34-227-90-184.compute-1.amazonaws.com:
cp -i ~/Downloads/fullstack.pem archive_macfailed.tar ec2-user@ec2-54-236-44-74.compute-1.amazonaws.com:
