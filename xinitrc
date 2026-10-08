#!/bin/sh

export GDK_SCALE=1
export GDK_DPI_SCALE=1.25
export QT_SCALE_FACTOR=1.25

xrandr --output DP-2 --mode 1920x1080 --rate 144

# feh --bg-fill ~/wallpaper.png &
hsetroot -solid "#101010"

while true; do
   xsetroot -name "$( date +"%F %R" )"
   sleep 1m    # Update time every minute
done &

exec dbus-run-session -- /home/user/bin/startdwm
