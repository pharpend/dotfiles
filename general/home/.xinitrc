[[ -f ~/.Xresources ]] && xrdb -merge /home/pete/.Xresources

sxhkd &!

exec ck-launch-session bspwm
