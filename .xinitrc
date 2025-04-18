# export GTK_IM_MODULE=ibus
# export QT_IM_MODULE=ibus
# export XMODIFIERS=@im=ibus

export QT_QPA_PLATFORM=xcb
export GDK_BACKEND=x11
# ibus-daemon -drx &

setxkbmap -option ctrl:swapcaps

# picom --backend glx&
dwmblocks &

clash-verge &

feh --bg-scale ~/dotfiles/install/forest.jpg
exec dwm


