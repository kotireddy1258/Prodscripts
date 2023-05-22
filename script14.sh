#!/bin/bash

#FILES="script14.sh"

#echo files is set to $FILES

git add $1

git commit -m "automated update"

git push -u origin main
