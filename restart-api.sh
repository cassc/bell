#!/bin/bash

set -e
HOME=/home/firefly

APP="bell-api"

PID=`ps aux|grep bell-api |grep -v grep |grep -v start |awk '{print $2}'`

if ! $PID ; then
    echo "killing ${PID}"
    kill $PID
    while sleep 1; do kill -0 ${PID} || break; done
fi


cd $HOME/bell/api/ ; DEBUG_INTERVAL=2 PROGRAM_PATH=/home/firefly/bell/python/examples cargo run > api.log &

exit 0
