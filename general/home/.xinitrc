[[ -f ~/.Xresources ]] && xrdb -merge /home/pete/.Xresources
xset m 4 1

# sxhkd &
# exec dbus-launch bspwm

exec dbus-launch i3
# exec dbus-launch awesome
