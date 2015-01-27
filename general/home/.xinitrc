[[ -f ~/.Xresources ]] && xrdb -merge /home/pete/.Xresources
xset m 4 1

# sxhkd &!
# exec ck-launch-session bspwm

exec dbus-launch i3
