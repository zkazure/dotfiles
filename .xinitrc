# export GTK_IM_MODULE=ibus
# export QT_IM_MODULE=ibus
# export XMODIFIERS=@im=ibus

export QT_QPA_PLATFORM=xcb
export GDK_BACKEND=x11
# ibus-daemon -drx &

setxkbmap -option ctrl:swapcaps

picom &
dwmblocks &

clash-verge &

feh --bg-scale ~/dotfiles//forest.jpg &
exec dwm


