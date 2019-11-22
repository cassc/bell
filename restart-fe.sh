#!/bin/bash

set -e
HOME=/home/firefly

APP="electron"

PID=`ps aux|grep $APP |grep -v grep |grep -v start |awk '{print $2}'`

if ! $PID ; then
    echo "killing ${PID}"
    kill $PID
    while sleep 1; do kill -0 ${PID} || break; done
fi


DISPLAY=:0 nohup electron  $HOME/bell/fe/   &

exit 0
