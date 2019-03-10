#!/bin/bash

echo "Recoloring icons"
find $(dirname $0) -name '*.svg' -type f -exec inkscape -f {} --verb=org.inkscape.color.grayscale.noprefs --verb=FileSave --verb=FileQuit \;
