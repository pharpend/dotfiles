#!/bin/sh

cd cursors

# Render cursors
python2 render-cursors.py source-cursors.svg

# Make cursor theme
echo "Building cursor theme..."
cd bitmaps
./make.sh
echo "Built."
cd ..
