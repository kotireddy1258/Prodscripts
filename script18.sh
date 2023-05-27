#!/bin/sh
#for i in `cat user.txt`
for i in {1..50}
do
useradd -p root@123 bat22a$i
done
