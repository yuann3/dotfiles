#!/bin/bash
source "/Users/yuan/.config/sketchybar/colors.sh" # Loads all defined colors

IP_ADDRESS=$(scutil --nwi | grep address | sed 's/.*://' | tr -d ' ' | head -1)
IS_VPN=$(scutil --nwi | grep -m1 'utun' | awk '{ print $1 }')

if [[ $IS_VPN != "" ]]; then
  ICON=
  LABEL="VPN"
elif [[ $IP_ADDRESS != "" ]]; then
  ICON=
  LABEL=$IP_ADDRESS
else
  ICON=
  LABEL="Not Connected"
fi

COLOR=0xffebdbb2
LABEL_COLOR=0xffebdbb2

sketchybar --set $NAME icon=$ICON label="$LABEL"
