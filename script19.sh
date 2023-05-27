#!/bin/sh
echo "enter command:"
read cmd
var=`$cmd` 
if [ $? -eq 0 ]
then
echo "successful"
else
echo "failed"
fi
