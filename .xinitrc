export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

 export DISPLAY=:0
 export XAUTHORITY="$HOME/.Xauthority"
 export QT_QPA_PLATFORM=xcb
 export GDK_BACKEND=x11

# ibus-daemon -drx &
setxkbmap -option ctrl:swapcaps


feh --bg-scale ~/dotfiles/install/forest.jpg &

# while ! dbus-update-activation-environment --systemd DISPLAY; do
#     sleep 0.1
# done

nohup dwmblocks  &

emacs --daemon &
clash-verge &
exec dwm


