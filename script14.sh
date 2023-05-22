#!/bin/bash

git add $1

echo "git file added successfuly"

git commit -m "$2  update"

echo "git commit successfuly"

git push -u origin main

echo "git file push main successfuly"

