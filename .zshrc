# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pete/.zshrc'

#autoload -U colors && colors
autoload -Uz compinit
compinit
# End of lines added by compinstall

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
alias lapwp='feh --bg-fill ~/Pictures/wallpaper/train-track-2560x1600.jpg'
alias horwp='feh --bg-fill ~/Pictures/wallpaper/train-track-2560x1600.jpg'
alias vertwp='feh --bg-fill ~/Pictures/wallpaper/sunset-1200x1920.jpg'

# Who has done the most work in a git project? Probably stolen from Stack
# overflow.
gbs () {
    git ls-tree -r HEAD |
    sed -re 's/^.{53}//' |
    while read filename; do file "$filename"; done |
    grep -E ': .*text' |
    sed -r -e 's/: .*//' |
    while read filename; do git blame -w "$filename"; done |
    sed -r -e 's/.*\((.*)[0-9]{4}-[0-9]{2}-[0-9]{2} .*/\1/' -e 's/ +$//' |
    sort |
    uniq -c
}


# cdl - cd and ls
cdl () {
	cd $@
	ls
}
alias cd='cdl'

topcmds() {
	cat ~/.histfile |awk '{print $1}'|awk 'BEGIN {FS="|"} {print $1}'|sort|uniq -c|sort -rn|head $1
}

trash() {
    mv $@ ~/.local/share/Trash/files/
}
alias rm='trash'
alias lstrash='ls ~/.local/share/Trash/files/'

# Syntax highlighting
source ~/.zsh.d/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

setopt prompt_subst
setopt auto_pushd
CONFIG="~/.config"
EDITOR="vim"
PROMPT='%B[%b%F{cyan}%2~%f%B] %F{green}$%f%b '
REPORTTIME=3
SHELL="/bin/zsh"

PATH=$PATH:$HOME/.gem/ruby/2.0.0/bin
PATH=$PATH:$HOME/bin			# Add my programs
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$HOME/.cabal/bin:$HOME/.cabal/bin
