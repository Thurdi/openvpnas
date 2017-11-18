#!/bin/bash

# remove twisted pid
if ps -p $(cat twistd.pid) > /dev/null 2>&1
then
    kill $(cat twistd.pid)
else
    echo "no twistd.pid found"   
fi

if [ -e "/var/run/openvpnas.pid" ]; then
    rm -rf twistd.pid &>/dev/null
fi

# remove pid file if it exists
if [ -e "/var/run/openvpnas.pid" ]; then
  rm -f "/var/run/openvpnas.pid" &>/dev/null
fi

#start openvpn
/usr/local/openvpn_as/scripts/openvpnas -n
