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
alias dud='du --max-depth=1 -B 1024M'
alias cpuinfo='cat /proc/cpuinfo | grep MHz'
alias cpuset='sudo cpupower frequency-set'
alias zi='zile'
alias irb='irb --simple-prompt'
alias pb='pastebinit'
alias sysd='sudo systemctl'
alias pd='pandoc'
alias pm='sudo pacman'
alias ipy='ipython'
alias enw='emacs -nw'
alias gf='git flow'
alias hc='herbstclient'
alias hlwm='herbstluftwm'
alias fehb='feh --bg-fill'
alias colemak='setxkbmap us -variant colemak -option altwin:swap_alt_win,ctrl:nocaps,'
alias qwerty='setxkbmap us -option altwin:swap_alt_win,ctrl:nocaps,'

pacman-remove-unneeded() {
    sudo pacman -Rns $(pacman -Qdt | awk '{printf("%s ",$1)}')
}

# Swap the keyboard layout
kb () {
    
}

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
