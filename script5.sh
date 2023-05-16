#!/bin/bash
echo "Enter A valu : "
read a
echo "Enter B valu : "
read b
echo "Enter C valu : "
read c
if [ $a -lt $b ];
then
echo "A is less then B"
else
echo "A is geter then B"
fi
if [ $b -lt $c ];
then
echo "B is less then C"
else
echo "B is geter then C"
fi
if [ $c -lt $a ];
then
echo "C is less then A"
else
echo "C is geter then A"
fi
