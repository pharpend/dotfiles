#!/bin/sh

link () {
    lncmd="ln -sf"
    # rm ~/$1
    $lncmd $(pwd)/$1 ~/$1
}

host () {
    case $(hostname) in
        locust)
            "comet"
            ;;
        valentine)
            "config"
            ;;
        *)
            "config"
            ;;
        esac
}

mkdir -p ~/.config
mkdir -p ~/.ghc
mkdir -p ~/.i3

link .barinfo
link bin
link .config/dunst
link .config/sakura
link .config/tint2
link .emacs
link .emacs.d
link .fonts
link .ghc/ghci.conf
link .gitconfig
link .i3/${host}
link .icons
link .mpd
link .ncmpcpp
link .nixpkgs
link README.md
link .themes
link .vim
link .vimrc
link .Xresources
link .zshlex
link .zshrc
