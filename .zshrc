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
alias dud='du --max-depth=1 -B 1024M'
alias cpuinfo='cat /proc/cpuinfo | grep MHz'
alias cpuset='sudo cpupower frequency-set'
alias zi='zile'
alias irb='irb --simple-prompt'
alias pd='pandoc'
alias ipy='ipython'
alias fehb='feh --bg-fill'
alias pry='pry --simple-prompt'
alias sbcl='rlwrap sbcl'
alias ec='emacsclient'
alias hist='cat ~/.histfile'
alias xcl='xclip -sel clip'
alias dmesg='dmesg -L -w'
alias cabal='/home/pete/.cabal/bin/cabal'
alias roc='rlwrap ocaml'
alias sprunge='curl -F sprunge=@- http://sprunge.us'
alias scc='sass --scss -t compressed'
alias sccw='scc --watch'
alias em='emerge'
alias eq='equery'
alias es='eselect'
alias s='sudo'

hscreen () {
    xrandr --output VGA-1 --rotate normal
    xrandr --output DVI-D-2 --rotate normal --right-of VGA-1
    nitrogen --restore
}

vscreen () {
    xrandr --output VGA-1 --rotate left
    xrandr --output DVI-D-2 --rotate left --right-of VGA-1
    nitrogen --restore
}

scr () {
    scrot -e 'mv $f ~/pics/screenshots'
}

scs () {
    scrot -s -e 'mv $f ~/pics/screenshots'
}

scsgur () {
    scrot -s -e 'imgur $f ; mv $f ~/pics/screenshots'
}

scrgur () {
    scrot -e 'imgur $f ; mv $f ~/pics/screenshots'
}

dcmsg () {
    echo "dotfiles-$(hostname) commit for $(date)"
}

dotc () {
    git add -A .
    git commit -am "dotfiles/$(hostname) commit for $(date)"
}

pdotc () {
    git add -A .
    git commit -am "private-dots/$(hostname) commit for $(date)"
}


# Swap the keyboard layout
colemak () {
    setxkbmap us,ar -variant colemak, -option\
        terminate:ctrl_alt_bksp,grp:rctrl_toggle,compose:ralt,ctrl:nocaps
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

upgrade-cabal-global () {
  cabal update
  cabal list --simple-output --installed --global |
  awk '{print $1}' |
  uniq |
  xargs -I {} sudo cabal install {} --reinstall --global
}

upgrade-cabal () {
  cabal update
  cabal list --simple-output --installed |
  awk '{print $1}' |
  uniq |
  xargs -I {} cabal install {} --reinstall
}

# Syntax highlighting
source /usr/share/zsh/site-contrib/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

setopt prompt_subst
setopt auto_pushd
CONFIG="~/.config"
PROMPT='%B[%b%F{cyan}%2~%f%B] %F{green}%#%f%b '
RPROMPT='%F{red}%n%f%B@%b%F{magenta}%M%f%'
REPORTTIME=3

export EDITOR="emacsclient"
export SHELL="/usr/bin/zsh"
export rvm_ignore_gemrc_issues=1

export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.gem/ruby/2.1.0/bin
export PATH=$PATH:$HOME/.rvm/bin
export PATH=$PATH:$HOME/.cabal/bin
export PATH=$PATH:$HOME/.config/herbstluftwm
export PATH=$PATH:$HOME/code/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/builds/yesod-bin-1.2.12/.cabal-sandbox/bin
