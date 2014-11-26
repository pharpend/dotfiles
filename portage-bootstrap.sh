#!/bin/bash

# Hi, this is a script I use with portage to bootstrap all of my installations.

# Packages I need on every system
general_packages=(
    app-admin/sudo
    app-arch/file-roller
    app-editors/emacs
    app-editors/vim
    app-editors/zile
    app-editors/eix
    app-portage/gentoolkit
    app-shells/zsh
    dev-haskell/cabal-install
    dev-lang/ghc
    dev-lang/ruby
    dev-lang/python
    dev-vcs/git
    gnome-base/gvfs
    gnome-extra/nm-applet
    lxde-base/lxappearance
    mail-client/alpine
    media-sound/ncmpcpp
    media-sound/pavucontrol
    net-misc/dropbox
    net-misc/wget
    sys-devel/clang
    sys-power/acpi
    www-client/chromium
    www-client/firefox-bin
    x11-misc/compton
    x11-misc/dmenu
    x11-misc/dunst
    x11-misc/nitrogen
    x11-misc/parcellite
    x11-misc/pcmanfm
    x11-misc/redshift
    x11-misc/xscreensaver
    x11-misc/xclip
    x11-misc/xsel
    x10-terms/rxvt-unicode
    x11-terms/terminator
    x11-wm/i3
)

su -c "emerge --sync"
for pkg in $general_packages; do
  su -c "emerge -jq $pkg"
done

# Packages only needed on the laptop
# laptop_packages=(
#     app-laptop/batti
#     pmutils
# )

# Overlays
overlays=(
    angelos
    betagarden
    causelay
    drdim
    mipl_emc
    mv
    mva
    raiagent
    rion
    sage-on-gentoo
)

sudo layman -S
for ovl in $overlays ; do
  sudo layman -a $ovl
done

# GHC packages
haskell_packages=(
    cabal-install
    alex
    happy
    pandoc
    hakyll
    lens
)

cabal update
for pkg in $haskell_packages ; do
  cabal install $pkg
done
