#!/bin/bash

let "RESULT=$RANDOM%2"; if [ "$RESULT" == 0 ]; then let "REQUEST=yes"; else let "REQUEST=no"; fi | curl -s "https://yesno.wtf/api?force=$REQUEST" | jq -r '.image' | xargs xdg-open
