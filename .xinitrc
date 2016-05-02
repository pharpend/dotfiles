[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
nset m 4 1
export BROWSER=/usr/bin/chromium-browser

# sxhkd &
# exec dbus-launch bspwm

exec dbus-launch i3
# exec dbus-launch xmonad
# exec dbus-launch awesome
