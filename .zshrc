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
alias wp-fag='feh --bg-fill ~/Pictures/wallpaper/arch-fag-paper-3840x2160.png'
alias wp-star='feh --bg-fill ~/Pictures/wallpaper/star-shower-1920x1080.jpg'
alias wp-salt='feh --bg-fill ~/Pictures/wallpaper/green-salt-3888x2592.jpg'
alias wp-red='feh --bg-fill ~/Pictures/wallpaper/red-forest-2560x1440.jpg'
alias wp-green='feh --bg-fill ~/Pictures/wallpaper/green-forest-2048x1365.jpg'
alias fehb='feh --bg-fill'

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

psc () {
    ps ax | grep $@
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
alias lstrash='ls ~/.local/share/Trash/files/'

# Syntax highlighting
source ~/.zsh.d/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

setopt prompt_subst
setopt auto_pushd
CONFIG="~/.config"
PROMPT='%B[%b%F{cyan}%2~%f%B] %F{green}$%f%b '
REPORTTIME=3

export EDITOR="vim"
export SHELL="/usr/bin/zsh"
export rvm_ignore_gemrc_issues=1

export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.gem/ruby/2.0.0/bin
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:$HOME/.cabal/bin:$HOME/.cabal/bin # Haskell
export PATH=$PATH:$HOME/.config/herbstluftwm        # herbstluftwm
export PATH=$PATH:$HOME/code/bin         # Add my programs
export PATH=$PATH:$HOME/code/bleu/bleu   # Add bleu
export PATH=$PATH:/opt/android-sdk/platform-tools
