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
alias np='nano PKGBUILD'
alias pacman='sudo pacman'
alias winmods='xmodmap ~/.Xmodmap'
alias dud='du --max-depth=1 -B 1024M'
alias cpuinfo='cat /proc/cpuinfo | grep MHz'
alias cpuset='sudo cpupower frequency-set'
alias zi='zile'
alias colctl='xmodmap -e "keycode 58 = Control_L"'
alias t='git'
alias c='cd'
alias irb='irb --simple-prompt'
alias pb='pastebinit'
alias sysd='sudo systemctl'

# cdl - cd and ls
cdl () {
	cd $@
	ls
}
alias cd='cdl'

# Emulates openSUSE's cnf (command not found)
cnf () {
    for arg in $@; do
        which $arg
        yaourt -Ss $arg
    done
}

topcmds() {
	cat ~/.histfile |awk '{print $1}'|awk 'BEGIN {FS="|"} {print $1}'|sort|uniq -c|sort -rn|head $1
}

macmods() {
	xmodmap ~/.Xmacmap
}

trash() {
    mv $@ ~/.local/share/Trash/files/
}
alias del='trash'
alias lstrash='ls ~/.local/share/Trash/files/'

colemods() {
    xmodmap ~/.Xcolemap
    xmodmap ~/.Xmodmap
}

# Syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# get the name of the branch we are on
git_prompt_info() { 
    git branch | awk '/^\*/ { print $2 }'
}
get_git_dirty() { 
  git diff --quiet || echo '*'
}

# variables
setopt prompt_subst
CONFIG="~/.config"
EDITOR="zile"
PROMPT='%B[%b%F{cyan}%2~%f%B] %F{green}$%f%b '
REPORTTIME=3
# RPROMPT='%B[%b%F{magenta}%*%f%B]%b'
SHELL="/bin/zsh"

PATH=$PATH:$HOME/.gem/ruby/2.0.0/bin
PATH=$PATH:$HOME/bin			# Add my programs
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
