#!/bin/bash
USER="root"
HOST="/tmp/koti/hosts"
ERROR_LOG="/tmp/ssh-copy-error.txt"
PUBLIC_KEY_FILE="/root/.ssh/authorized_keys"
if [ ! -f $PUBLIC_KEY_FILE ]; then
   echo"file '$PUBLIC_KEY_FILE'not found!"
   exit 1
fi
if [ ! -f $HOST ];then
   echo "file '$HOST'not found !"
   exit 2
fi
for IP in `cat $HOST`;do
ssh-copy-id -i $USER@$IP 2>$ERROR_LOG
RESULT=$?
if [ $RESULT -eq 0 ];then
   echo ""
   echo"public key successfully copied to $IP"
else
   echo ""
   echo"$(cat $ERROR_LOG)"
   echo
   exit 3
fi
done
