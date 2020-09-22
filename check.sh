#!/bin/bash
#####################
# By Eslam Shapsough
#####################
DIR="/health_check_logs"
if [ ! -d "$DIR" ]; then
        mkdir $DIR
fi
if [[ -v URL ]]; then
        while true; do
                RESULT=$(curl --max-time 5 -I -s -k $URL | awk 'NR==1')
                CUR_TIME=$(date)
                echo $CUR_TIME ":> ("$URL") "$RESULT >> /health_check_logs/logs.log
                sleep 5;
        done
else
        echo "No URL Set! Exiting...."
        exit
fi
