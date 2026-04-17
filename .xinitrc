#!/bin/sh

if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
    eval $(dbus-launch --sh-syntax --exit-with-session)
fi

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

setxkbmap -option ctrl:swapcaps
xset r rate 200 60

fcitx5 -d &

# sleep 1

clash-verge &
emacs --daemon &

xautolock -time 5 -locker "slock" -corners 000- &
xautolock -time 15 -killer "systemctl suspend" -corners 000- &

flameshot &
feh --bg-scale ~/Pictures/wallpapers/forest.jpg

xrandr \
  --output eDP --primary --mode 1920x1200 --pos 1920x0\
  --output HDMI-A-0 --mode 1920x1080 --pos 0x120

# dwmblocks &
exec dwm
