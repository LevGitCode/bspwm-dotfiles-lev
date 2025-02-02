#!/bin/bash
city="Moscow"
url="wttr.in/$city?format=%t"
weather=$(/usr/bin/curl -s "$url")

if [[ -z "$weather" ]]; then
  echo -n "N/A"
else
  echo -n "$weather"
fi

