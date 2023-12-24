while IFS="" read -r p || [ -n "$p" ]
do
  yt-dlp -v -f "bv*[height<=720][ext=mp4]+ba*[ext=m4a]" -N 4 "$p"
done < ../playlist.txt
