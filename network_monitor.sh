#!/bin/bash



LOGFILE="/var/log/network_monitor.log"
EMAIL="ronlir.omc@gmail.com"
INTERVAL="500"

touch $LOGFILE

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color


        while true; do

                PING=$(ping -c 1 google.com)
                EXITCODE=$?
                TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")


        if [ $EXITCODE -eq 0 ]; then
                echo -e "${GREEN} $TIMESTAMP: connection is up - $EXITCODE ${NC}" >> $LOGFILE
        else
