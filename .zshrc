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
#

# [[ -z "$TMUX" ]] && exec tmux

# My bash aliases
alias ls='ls --color=auto -F --ignore="*~"'
alias l='ls -l'
alias la='l -a'
alias grep='grep --color=tty -d skip'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='vim PKGBUILD'
alias dud='du --max-depth=1 -B 1024M'
alias cpuinfo='cat /proc/cpuinfo | grep MHz'
alias cpuset='sudo cpupower frequency-set'
alias zi='zile'
alias irb='irb --simple-prompt'
alias pb='pastebinit'
alias lpaste='pastebinit -b "http://lpaste.net/"'
alias sysd='sudo systemctl'
alias pd='pandoc'
alias pm='sudo pacman'
alias ipy='ipython'
alias enw='emacs -nw'
alias gf='git flow'
alias hc='herbstclient'
alias hlwm='herbstluftwm'
alias fehb='feh --bg-fill'
alias pry='pry --simple-prompt'
alias sbcl='rlwrap sbcl'
alias xrdbx='xrdb ~/.Xresources'
alias rsurxvtd='sudo systemctl restart urxvtd@pete.service'
alias ec='emacsclient'
alias hist='cat ~/.histfile'

alias pms='sudo pacman -S'
alias pmsy='sudo pacman -Sy'
alias pmsyu='sudo pacman -Syu'
alias pmrns='sudo pacman -Rns'
alias pmss='pacman -Ss'
alias pmsi='pacman -Si'
alias pmqs='pacman -Qs'
alias pmqi='pacman -Qi'
alias aurs='yaourt -S'
alias aursn='yaourt -S --noconfirm'
alias aurss='yaourt -Ss'
alias aursi='yaourt -Si'
alias aursyua='yaourt -Syua'
alias aursyuan='yaourt -Syua --noconfirm'

scr () {
    scrot -e 'mv $f ~/Pictures/screenshots'
}

scs () {
    scrot -s -e 'mv $f ~/Pictures/screenshots'
}

scsgur () {
    scrot -s -e 'imgur $f ; mv $f ~/Pictures/screenshots'
}

scrgur () {
    scrot -e 'imgur $f ; mv $f ~/Pictures/screenshots'
}

dotup () {
    wd=$(pwd)
    \cd ~/src/dotfiles || \cd ~/code/dotfiles
    git add -A . &&
    git commit -m "dotfiles-$(hostname) commit for $(date)" &&
    git pull &&
    git push
    \cd $wd
}

dcmsg () {
    echo "dotfiles-$(hostname) commit for $(date)"
}

dot-commit () {
    git a .
    git cm -am "dotfiles-$(hostname) commit for $(date)"
}


colemak () {
    setxkbmap us,us,ar -variant colemak, -option\
        terminate:ctrl_alt_bksp,grp:rctrl_toggle,compose:ralt,ctrl:nocaps
}

pacman-remove-unneeded() {
    sudo pacman -Rns $(pacman -Qdt | awk '{printf("%s ",$1)}')
}

screencast () {
    ffmpeg -f pulse -i default -f x11grab -s $1 -r 15 -i :0.0 $2
}

# Swap the keyboard layout

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

tn () {
    $HOME/bin/tn-$(hostname) $@
}

# Syntax highlighting
source ~/.zsh.d/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

setopt prompt_subst
setopt auto_pushd
CONFIG="~/.config"
PROMPT='%B[%b%F{cyan}%2~%f%B] %F{green}%#%f%b '
RPROMPT='%F{red}%n%f%B@%b%F{magenta}%M%f%'
REPORTTIME=3

export EDITOR="vim"
export SHELL="/usr/bin/zsh"
export rvm_ignore_gemrc_issues=1

export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.gem/ruby/2.0.0/bin
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:$HOME/.cabal/bin # Haskell
export PATH=$PATH:$HOME/.config/herbstluftwm        # herbstluftwm
export PATH=$PATH:$HOME/code/bin         # Add my programs
export PATH=$PATH:$HOME/code/bleu/bleu   # Add bleu
export PATH=$PATH:/opt/android-sdk/platform-tools
export PATH=$PATH:$HOME/.local/bin

# alsi
