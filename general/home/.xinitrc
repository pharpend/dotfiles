[[ -f ~/.Xresources ]] && xrdb -merge /home/pete/.Xresources
xset m 4 1

exec ck-launch-session i3
