#!/usr/bin/env bash

dir="$HOME/Wallpapers/others/"

while true; do 
    feh --randomize --recursive --bg-fill $dir
    sleep 960
done
