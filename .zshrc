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
alias lpaste='pastebinit -b "http://lpaste.net/" | xclip -sel clip'
alias hpaste='pastebinit -b "http://lpaste.net/new/haskell" | xclip -sel clip'
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
alias xcl='xclip -sel clip'
alias dmesg='dmesg -L -w'
alias cabal='/home/pete/.cabal/bin/cabal'
alias roc='rlwrap ocaml'
alias sprunge='curl -F sprunge=@- http://sprunge.us'
alias translate='google-translate'
alias trfen='translate english'

# n () {
#     autojump $@
#     ls
# }

trten () {
    translate $1 english $@
}

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
alias scc='sass --scss -t compressed'
alias sccw='scc --watch'

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

dcmsg () {
    echo "dotfiles-$(hostname) commit for $(date)"
}

dot-commit () {
    git a .
    git cm -am "dotfiles-$(hostname) commit for $(date)"
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

default-tray () {
  trayer --align left --edge top --expand false --heighttype pixel --height 10\
    --transparent true --widthtype request --width 3 --alpha 255 --tint 2 
}

rxmo () {
    killall xmobar
    xmobar &!
}

rstalone () {
    killall stalonetray
    stalonetray &!
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
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

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
