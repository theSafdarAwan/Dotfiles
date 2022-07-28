#!/bin/bash

ps -ef | grep feh-wallpaper_changer.sh | grep -v grep | awk '{print $2}' | xargs kill
watch -n 600 feh --randomize --bg-fill ~/wallpapers/* > /dev/null
