#!/bin/sh
# Toggles a problem on and off

ID=$(pgrep "$1")

if [ -z "$ID" ]; then
  "$1" "$2"
else
 ./Documents/scripts/killandnotify "$1" "$1 killed"
fi
