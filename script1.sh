#!/bin/bash
#varA=$(grep judith /etc/passwd)
#echo varA

echo -n "enter user name"
read user
grep $user /etc/passwd
if [$? - eq 0]; then
echo "found"
else 
echo "nf"
fi
