#!/bin/bash
OPTION=$1

NORD=$(which nordvpn)
CURL=$(which curl)
IPINFO='ipinfo.io'
# https://support.nordvpn.com/Connectivity/Linux/1905092252/How-to-log-in-to-NordVPN-on-Linux-with-a-token.htm
TOKEN=

if [ "$OPTION" == "c" ]
then
  sudo $NORD login --token $TOKEN

  sudo $NORD countries

  sudo $NORD connect United_States

elif [ "$OPTION" == "d" ]
then
  sudo $NORD disconnect
else
  echo "./$0 [d|c]"
fi

IP=$(dig +short myip.opendns.com @resolver1.opendns.com)

$CURL $IPINFO/$IP 

exit 0
