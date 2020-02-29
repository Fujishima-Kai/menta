#!/bin/sh
TARGET_FILE="test.log"
while read line
do 
    bar=`echo ${line} | awk '{print "INSERT INTO user (user_id, login_date) VALUES (  " $1 " , " $2 $3  " )" }'`
    echo ${bar}
done < $TARGET_FILE > fiexed_test.log

