#!/bin/bash
echo "run cammand"
read cmd
`$cmd`
if [ $? -eq 0 ]
 then
	 echo "run successfully"
 else
	 echo "cmd not found"
fi
