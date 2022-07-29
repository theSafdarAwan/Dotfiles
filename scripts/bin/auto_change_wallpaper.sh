#!/usr/bin/env bash

dir="$HOME/Dotfiles/wallpaper"

while true; do 
    feh --randomize --recursive --bg-fill $dir
    sleep 10m
done
