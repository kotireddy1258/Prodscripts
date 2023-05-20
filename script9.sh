#!/bddin/bash
HOST="/tmp/koti/hosts"
TIMEOUT=2
for SERVER in `cat $HOST`;do
  echo ""
  echo "$SERVER checking "
ssh $SERVER "ping -c $TIMEOUT $SERVER 2> /dev/null"

RESULT=$?
if [ $RESULT -eq 0 ];then
   echo "$SERVER   server pinging "
sleep 3
else
    echo "$SERVER  server not pinging "
fi
done

