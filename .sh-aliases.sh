#!/usr/bin/zsh
# My bash aliases
alias ls='ls --color=auto -F --ignore="*~"'
alias l='ls -l'
alias la='l -a'
alias grep='grep --color=tty -d skip'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='vim PKGBUILD'
alias winmods='xmodmap ~/.Xmodmap'
alias dud='du --max-depth=1 -B 1024M'
alias cpuinfo='cat /proc/cpuinfo | grep MHz'
alias cpuset='sudo cpupower frequency-set'
alias zi='zile'
alias c='cd'
alias irb='irb --simple-prompt'
alias pb='pastebinit'
alias sysd='sudo systemctl'
alias pd='pandoc'
alias pm='sudo pacman'
alias ipy='ipython'
alias uncapslock='xmodmap -e "keycode 66 = Control_L"'
alias capslock='xmodmap -e "keycode 66 = Caps_Lock"'
alias enw='emacs -nw'
alias gf='git flow'
alias xmodfix='xmodmap -e "add Control = Control_L"'
alias extmon='xrandr --output VGA2 --left-of LVDS2 --rotate left --auto'
alias extmoff='xrandr --output VGA2 --off'
alias hc='herbstclient'
alias hlwm='herbstluftwm'
alias wp-train='feh --bg-fill ~/Pictures/wallpaper/train-track-2560x1600.jpg'
alias wp-cat='feh --bg-fill ~/Pictures/wallpaper/cat-planet-1920x1200.jpg'
alias wp-frog='feh --bg-fill ~/Pictures/wallpaper/frog-rain-2880x1920.jpg'
alias wp-obama='feh --bg-fill ~/Pictures/wallpaper/obama-1980x1076.jpg'
alias wp-vert='feh --bg-fill ~/Pictures/wallpaper/sunset-1200x1920.jpg'
alias wp-galaxy='feh --bg-fill ~/Pictures/wallpaper/another-fucking-galaxy-1920x1080.jpg'
alias wp-kitten='feh --bg-fill ~/Pictures/wallpaper/kitten-3600x2019.jpg'
alias wp-wood='feh --bg-fill ~/Pictures/wallpaper/wood-grain-4493x1310.jpg'
alias wp-maple='feh --bg-fill ~/Pictures/wallpaper/bigleaf-maple-2000x1333.jpg'
alias wp-meteor='feh --bg-fill ~/Pictures/wallpaper/meteor-shower-1920x1080.jpg'
alias wp-star='feh --bg-fill ~/Pictures/wallpaper/star-shower-1920x1080.jpg'
alias wp-salt='feh --bg-fill ~/Pictures/wallpaper/green-salt-3888x2592.jpg'