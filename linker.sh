#!/bin/sh


echo "Removing old files... " 
dpath=$(pwd)                  
rm -rf ~/.barinfo           
rm -rf ~/bin                
rm -rf ~/.config/dunst      
rm -rf ~/.config/fontconfig 
rm -rf ~/.config/gtk-3.0
rm -rf ~/.config/termite 
rm -rf ~/.emacs             
rm -rf ~/.emacs.d           
rm -rf ~/.fonts             
rm -rf ~/.gitconfig         
rm -rf ~/.ghc/ghci.conf     
rm -rf ~/.icons             
rm -rf ~/.config/mpd        
rm -rf ~/.ncmpcpp           
rm -rf ~/.themes
rm -rf ~/.vim               
rm -rf ~/.vimrc             
rm -rf ~/.xinitrc           
rm -rf ~/.xmobar
rm -rf ~/.xmonad
rm -rf ~/.Xresources        
rm -rf ~/.zshrc             
rm -rf ~/.zshlex              
echo "Done."

mkdir ~/.i3 ~/.ghc ~/.config

echo "Linking..."
ln -sf $dpath/.barinfo            ~/.barinfo            &&
ln -sf $dpath/bin                 ~/bin                 &&
ln -sf $dpath/.config/dunst       ~/.config/dunst       &&
ln -sf $dpath/.config/fontconfig  ~/.config/fontconfig  &&
ln -sf $dpath/.config/gtk-3.0  ~/.config/gtk-3.0  &&
ln -sf $dpath/.config/termite     ~/.config/termite     &&
ln -sf $dpath/.emacs              ~/.emacs              &&
ln -sf $dpath/.emacs.d            ~/.emacs.d            &&
ln -sf $dpath/.fonts              ~/.fonts              &&
ln -sf $dpath/.gitconfig          ~/.gitconfig          &&
ln -sf $dpath/.ghc/ghci.conf      ~/.ghc/ghci.conf      &&
ln -sf $dpath/.i3/config.$1       ~/.i3/config          &&
ln -sf $dpath/.icons              ~/.icons              &&
ln -sf $dpath/.config/mpd         ~/.config/mpd         &&
ln -sf $dpath/.ncmpcpp            ~/.ncmpcpp            &&
ln -sf $dpath/.themes             ~/.themes             &&
ln -sf $dpath/.vim                ~/.vim                &&
ln -sf $dpath/.vimrc              ~/.vimrc              &&
ln -sf $dpath/.xinitrc            ~/.xinitrc            &&
ln -sf $dpath/.xmobar             ~/.xmobar             &&
ln -sf $dpath/.xmonad             ~/.xmonad             &&
ln -sf $dpath/.Xresources         ~/.Xresources         &&
ln -sf $dpath/.zshrc              ~/.zshrc              &&
ln -sf $dpath/.zshlex             ~/.zshlex
echo "Done"
