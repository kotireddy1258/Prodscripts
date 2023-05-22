#!/bin/bash
echo "All Scripts"
ls
sleep 3
echo ""
git add $1
if [ $? -eq 0 ];then
echo "git file added successfuly"
else
echo "git file not found"
echo ""
fi

git commit -m "$2  update"
if [ $? -eq 0 ];then
echo "git file update successfuly"
else
echo "git file not update"
echo ""
fi

git push -u origin main
if [ $? -eq 0 ];then
echo "git file push main successfuly"
else
echo "git file not pushed got error"
echo ""
fi
