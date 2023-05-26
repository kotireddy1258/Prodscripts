#!/bin/bash
i=0

while [ $i -lt $2 ]; do 
  date &
  sleep $1
  i=$(( i + 1 ))
done
