#!/bin/sh

BASEDIR=`dirname $0`

cd $BASEDIR

python chnroutes.py -p mac

osascript -e "do shell script \"mv ip-down ip-up /etc/ppp/ && chmod 755 /etc/ppp/ip-*\" with administrator privileges"
