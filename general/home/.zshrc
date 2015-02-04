# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

#autoload -U colors && colors
autoload -Uz compinit
compinit
# End of lines added by compinstall
# 

# [[ -z "$TMUX" ]] && exec tmux

# My bash aliases
alias ls='ls -F -G'
alias l='ls -l'
alias la='l -a'
alias grep='grep -i --color=tty -d skip'
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
alias scc='sass --scss -t compressed'
alias sccw='scc --watch'
alias clrml='echo 0 > ~/.mailnum'
alias xrdbo='xrdb -merge ~/.Xresources'
alias mredshift='redshift -l 40.75:111.88 -b 0.5:1.0'
alias unrhift='redshift -r -l 40.75:111.88 -b '
alias eix='eix -n'              # eix is annoying 
alias gf='git flow'
alias ysd='systemctl'
alias sysd='sudo systemctl'
alias myip='curl icanhazip.com'

# Openvpn fails a lot, so here
alias ropev='sysd restart openvpn@openvpn'

# Portage aliases
# alias sem='sudo emerge --jobs --ask --verbose'
# alias em='emerge'
# alias emudn='sudo emerge --jobs --ask --verbose --update --deep --newuse --with-bdeps=y @world'
# alias eq='equery'
# alias es='sudo eselect'

# Pacman aliases
alias pm='pacman'
alias spm='sudo pacman'
alias pmq='pacman -Q'
alias pmqs='pacman -Qs'
alias pmqi='pacman -Qi'
alias pms='sudo pacman -S'
alias pmsyu='sudo pacman -Syu'
alias pmss='pacman -Ss'
alias pmsi='pacman -Si'
alias pmrm='sudo pacman -Rsn'
alias aur='yaourt'
alias aurs='yaourt -S'
alias aurss='yaourt -Ss'
alias aursi='yaourt -Si'
alias aursn='yaourt -S --noconfirm'
alias aursyua='yaourt -Syua'
alias aursyuan='yaourt -Syua --noconfirm'

# Other functions
sprunge () {
    curl -F sprunge=@$1 http://sprunge.us
}

hvscreen () {
    xrandr --output DVI-D-1 --rotate normal
    xrandr --output DVI-D-2 --rotate left --right-of DVI-D-1
    nitrogen --restore
}

vhscreen () {
    xrandr --output DVI-D-1 --rotate left
    xrandr --output DVI-D-2 --rotate normal --right-of DVI-D-1
    nitrogen --restore
}

hscreen () {
    xrandr --output DVI-D-1 --rotate normal
    xrandr --output DVI-D-2 --rotate normal --right-of DVI-D-1
    nitrogen --restore
}

vscreen () {
    xrandr --output DVI-D-1 --rotate left
    xrandr --output DVI-D-2 --rotate left --right-of DVI-D-1
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

dot-commit() {
    git add -A .
    git commit
}

dotcpd () {
    wd=$(pwd)
    cd $1
    repo_name=$(git remote -v | head -n1 | awk '{print $2}' | sed 's/.*\///' | sed 's/\.git//')
    dot-commit
    git pull
    git push
    cd $wd
}

dotcp () {
    dotcpd ~/src/dotfiles
}

pdotcp () {
    dotcpd ~/src/private-dots
}

adotcp () {
    dotcp
    pdotcp
}


# Swap the keyboard layout
colemak () {
    setxkbmap us,ru -variant colemak, -option\
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

ggit-branch () {
    git branch &> /dev/null
    if [[ $? -eq 0 ]]; then
      br=$(git branch | \grep \* | sed "s/^\* //")
      echo " ${br}"
    fi
}

rrshift () {
    killall redshift
    mredshift &!
}

ri3bars () {
    killall i3bar &&
    i3bar --bar_id=bar-0 &!
    i3bar --bar_id=bar-1 &!
}

pubnight () {
    cp lysa.pdf $(printf "pdfs/lysa-%s.pdf" $(date -u +%y%m%d%H%M%S))
    \cd pdfs
    git pull
    git add -A .
    git commit 
    git push
    \cd ..
}

initii () {
  printf "Connecting..."
  ii -s irc.freenode.net -p 6667 -n deltabot -i /tmp &!
  sleep 10s
  printf "...done.\n"
  printf "Identifying..."
  echo "/j NickServ" > /tmp/irc.freenode.net/in
  echo "identify $1" > /tmp/irc.freenode.net/NickServ/in
  printf "done.\n"
  printf "Joining #lysa..."
  echo "/j #lysa" > /tmp/irc.freenode.net/in
  printf "done.\n"
}

killii () {
    killall ii
    rm -rf /tmp/irc.freenode.net/
}

dpastespec () {
  x=$(git diff $1 | wgetpaste -s bpaste -l Diff | awk '{print $NF}') &&
  printf "Updated diff: %s\n" $x > /tmp/irc.freenode.net/\#lysa/in
}

dpaste () {
    dpastespec HEAD
}

lysa_pushall () {
    for i in {origin,hub,bit,gitorious} ; do
        git push $i master $@
    done
}

# Syntax highlighting
source ~/.zshlex/zsh-syntax-highlighting.zsh

setopt prompt_subst
setopt auto_pushd
CONFIG="~/.config"
PROMPT='%B[%b%F{cyan}%2~%f%F{red}$(ggit-branch)%f%B]%b %F{green}%#%f '
RPROMPT='%F{red}%n%f%B@%b%F{magenta}%M%f'
REPORTTIME=3

export EDITOR="vim"
export SHELL=$(which zsh)
export rvm_ignore_gemrc_issues=1

export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.gem/ruby/1.9.0/bin
export PATH=$PATH:$HOME/.gem/ruby/2.0.0/bin
export PATH=$PATH:$HOME/.gem/ruby/2.1.0/bin
export PATH=$PATH:$HOME/.gem/ruby/2.2.0/bin
export PATH=$PATH:$HOME/.rvm/bin
export PATH=$PATH:$HOME/.cabal/bin

export BROWSER=$(which firefox-bin)
