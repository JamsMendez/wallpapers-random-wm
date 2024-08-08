#!/usr/bin/bash

# $DISPLAY not found ... try again
while true; do
  export DISPLAY=":0.0"

  # images path
  DIR="/opt/wallpapers"

  if [[ -n "$DISPLAY" ]]; then 
    img=(`find $DIR -name '*' -exec file {} \; | grep -o -P '^.+: \w+ image' | cut -d':' -f1`)
    while true; do
      # feh --no-fehbg --bg-fill "${img[$RANDOM % ${#img[@]} ]}"
      # feh --bg-fill "${img[$RANDOM % ${#img[@]} ]}"
      if [[ `gsettings get org.gnome.desktop.interface color-scheme` =~ 'dark' ]]; then
        gsettings set org.gnome.desktop.background picture-uri-dark "file://${img[$RANDOM % ${#img[@]} ]}"
      else 
        gsettings set org.gnome.desktop.background picture-uri "file://${img[$RANDOM % ${#img[@]} ]}"
        # sleep 30 minites ... change to 15m, 10m, etc
      fi
      echo "..... changing wallpaper"
      sleep 15s
    done
  else
    echo "Waiting DISPLAY ..."
    sleep 1s
  fi
done
