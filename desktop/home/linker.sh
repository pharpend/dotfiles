#!/bin/sh


echo "Removing old files... " 
dpath=$(pwd)                  
rm -rf ~/.i3
echo "Done."
echo "Linking..."
ln -sf $dpath/.i3 ~/.i3
echo "Done"
