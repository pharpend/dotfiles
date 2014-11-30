#!/bin/sh


echo "Removing old files... " 
dpath=$(pwd)                  
rm -rf ~/.barinfo             &&
rm -rf ~/bin                  &&
rm -rf ~/.config/dunst        &&
rm -rf ~/.config/fontconfig   &&
rm -rf ~/.emacs               &&
rm -rf ~/.emacs.d             &&
rm -rf ~/.fonts               &&
rm -rf ~/.gitconfig           &&
rm -rf ~/.ghc/ghci.conf       &&
rm -rf ~/.icons               &&
rm -rf ~/.mpd                 &&
rm -rf ~/.ncmpcpp             &&
rm -rf ~/.vim                 &&
rm -rf ~/.vimrc               &&
rm -rf ~/.xinitrc             &&
rm -rf ~/.Xresources          &&
rm -rf ~/.zshrc               &&
rm -rf ~/.zshlex              
echo "Done."

echo "Linking..."
ln -sf $dpath/.barinfo            ~/.barinfo            &&
ln -sf $dpath/bin                 ~/bin                 &&
ln -sf $dpath/.config/dunst       ~/.config/dunst       &&
ln -sf $dpath/.config/fontconfig  ~/.config/fontconfig  &&
ln -sf $dpath/.emacs              ~/.emacs              &&
ln -sf $dpath/.emacs.d            ~/.emacs.d            &&
ln -sf $dpath/.fonts              ~/.fonts              &&
ln -sf $dpath/.gitconfig          ~/.gitconfig          &&
ln -sf $dpath/.ghc/ghci.conf      ~/.ghc/ghci.conf      &&
ln -sf $dpath/.icons              ~/.icons              &&
ln -sf $dpath/.mpd                ~/.mpd                &&
ln -sf $dpath/.ncmpcpp            ~/.ncmpcpp            &&
ln -sf $dpath/.vim                ~/.vim                &&
ln -sf $dpath/.vimrc              ~/.vimrc              &&
ln -sf $dpath/.xinitrc            ~/.xinitrc            &&
ln -sf $dpath/.Xresources         ~/.Xresources         &&
ln -sf $dpath/.zshrc              ~/.zshrc              &&
ln -sf $dpath/.zshlex             ~/.zshlex
echo "Done"
