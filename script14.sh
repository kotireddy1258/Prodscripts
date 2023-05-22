#!/bin/bash

git add $1

echo "git file added successfuly"

echo "******************************************"
echo ""
sleep 3

git commit -m "$2  update"

echo "******************************************"
echo ""
sleep 3

echo "git commit successfuly"

echo "******************************************"
echo ""
sleep 3
git push -u origin main

echo "git file push main successfuly"

echo "******************************************"
echo ""
