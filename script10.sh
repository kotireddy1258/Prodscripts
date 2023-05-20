#!/bin/bash
USER="root"
HOST="/tmp/koti/hosts"
echo "##########################################"
PRECHECKS="date;uptime;uname -r;free -h"
for IP in `cat $HOST`;do
ssh  $USER@$IP "$PRECHECKS"
RESULT=$?
if [ $RESULT -eq 0 ];then
echo "............................................."
       echo " server $IP prechecks details"
echo "............................................."
sleep 3
echo ""
echo ""
else
   echo"server $IP not connected"
   echo
fi
done

