clash-verge &
emacs --daemon &

feh --bg-center ~/Pictures/wallpapers/monsterHunterFire.png --bg-center ~/Pictures/wallpapers/monsterHunter.jpg

xrandr --output HDMI-A-0 --auto --output eDP --auto --right-of HDMI-A-0
setxkbmap -option ctrl:swapcaps &

exec dwm
