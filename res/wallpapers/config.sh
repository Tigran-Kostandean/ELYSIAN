#!/bin/bash

path="file:///home/elysian/.elysian/wallpapers/images/"
IMAGES=($path*.png)

RANDOM_IMAGE="${IMAGES[RANDOM % ${#IMAGES[@]}]}"
echo "$RANDOM_IMAGE"

gsettings set org.gnome.desktop.background picture-uri "$RANDOM_IMAGE"
