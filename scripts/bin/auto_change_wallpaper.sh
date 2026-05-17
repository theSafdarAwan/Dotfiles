#!/usr/bin/env bash

# dir="$HOME/Wallpapers/others/"
dir="$HOME/Dotfiles/wallpapers/"

while true; do 
    feh --randomize --recursive --bg-fill $dir
    sleep 960
done
