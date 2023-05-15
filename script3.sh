#!/bin/bash
echo "Enter A valu : "
read a
echo "Enter B valu : "
read b
c=`expr $a + $b`
echo "C value=$c"
