#!/bin/bash

#create a tar + compress file from your bash folder
tar -czf bash/archivefile.tar bash/hello.sh
#scp it to ec2 box
scp -i ~/Downloads/fullstack.pem archivefile.tar ec2-user@ec2-18-233-97-155.compute-1.amazonaws.com:
