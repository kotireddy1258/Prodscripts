#!/bin/bash
echo "Enter A valu : "
read a
echo "Enter B valu : "
read b
c=`expr $a + $b`
echo "C value=$c"
n=$c
if [ $n -lt 10 ];
then
echo "It is a one digit number"
else
echo "It is a two digit number"
fi
