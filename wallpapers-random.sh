#!/usr/bin/bash

# $DISPLAY not found ... try again
while true; do
  export DISPLAY=":0.0"

  # images path
  DIR="/home/USER/Pictures/Wallpapers/release"

  if [[ -n "$DISPLAY" ]]; then 
    img=(`find $DIR -name '*' -exec file {} \; | grep -o -P '^.+: \w+ image' | cut -d':' -f1`)
    while true; do
      # feh --no-fehbg --bg-fill "${img[$RANDOM % ${#img[@]} ]}"
      feh --bg-fill "${img[$RANDOM % ${#img[@]} ]}"
      # sleep 30 minites ... change to 15m, 10m, etc
      sleep 30m
    done
  else
    echo "Waiting DISPLAY ..."
    sleep 1s
  fi
done
