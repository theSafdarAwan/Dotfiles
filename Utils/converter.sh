#!/bin/bash
# convert any media file to the format you want by specify the source extension
# and the output extension
for i in *.mp4; do ffmpeg -i "$i" "${i%.*}.mp3"; done
