#!/bin/bash
dracula_black="#1C1D26"
dracula_black2="#282A36"
dracula_blue="#61afef"
dracula_yellow="#fccf6c"
dracula_red="#ec6b64"
dracula_white="#abb2bf"
dracula_green="#71f094"
dracula_visual_grey="#373844"
dracula_comment_grey="#5a5c68"
dracula_gray_shade="#808080"
get() {
   local option=$1
   local default_value=$2
   local option_value="$(tmux show-option -gv "$option")"

   if [ -z "$option_value" ]; then
      echo "$default_value"
   else
      echo "$option_value"
   fi
}

set() {
   local option=$1
   local value=$2
   tmux set-option -g "$option" "$value"
}

setw() {
   local option=$1
   local value=$2
   tmux set-window-option -g "$option" "$value"
}
#|||||||||||||||||
# status bar
#|||||||||||||||||
#>>> color's combination's
color_wb="#[fg=$dracula_white,bg=$dracula_black,]"
color_wb2="#[fg=$dracula_white,bg=$dracula_black2,]"
color_bw="#[fg=$dracula_black,bg=$dracula_white,]"
color_bw2="#[fg=$dracula_black2,bg=$dracula_white,]"
color_yb2="#[fg=$dracula_yellow,bg=$dracula_black2]"
color_yb="#[fg=$dracula_yellow,bg=$dracula_black]"
color_rb="#[fg=$dracula_red,bg=$dracula_black,]"
color_bb="#[fg=$dracula_blue,bg=$dracula_black,]"
color_bg="#[fg=$dracula_comment_grey,bg=$dracula_black,]"
color_bg2="#[fg=$dracula_comment_grey,bg=$dracula_black2,]"
#>>> icon's
lf_icon=" #[fg=$dracula_white,bg=$dracula_black2]${color_wb}"
rf_icon=" #[fg=$dracula_white,bg=$dracula_black2]${color_wb}"
lf_icon_black=" #[fg=$dracula_black,bg=$dracula_white]${color_wb}"
rf_icon_black=" #[fg=$dracula_white,bg=$dracula_black]${color_wb}"
hrf_icon_black=" #[fg=$dracula_black]${color_wb}"
hrf_icon_white=" #[fg=$dracula_white]${color_wb}"
lrf_icon_black=" #[fg=$dracula_black]${color_wb}"
lrf_icon_white=" #[fg=$dracula_white]${color_wb}"
space_white="#[bg=$dracula_white] "
space_black2="#[bg=$dracula_black2] "
space_black="#[bg=$dracula_black] "

#>>> modules name's variables < for modularity convenience 
node_version="$(node --version | cut -f 1 -d ' ')"
node="#[fg=$dracula_blue] node${color_bg2}:${color_bg2}$node_version${color_wb}" pane_list_names="${color_wb2} #I:#W"
last_pane_indicator="#(printf '%%s\n' '#F' | sed 's/-/!/')"
zoomed_pane_indication=" ${color_yb2}#{?window_zoomed_flag,#[fg=$dracula_red],}#I:#W*${color_wb}"
prefix_indicator="${color_bw} #{s/root//:client_key_table}${color_bw}"
date="${color_bw}#[bold]%d-%m-%Y"
day="${color_rb}#[bold] %A"
session_list="$(tmux ls | wc --lines)"
session_list_and_name="${color_bb} ${session_list}${color_bg}:${color_yb}#S${lf_icon_black}"

#>>> status bar position's
set "status-right" "${node}${color_wb2}${rf_icon}${space_white}${date} ${hrf_icon_black}${day}"
set "status-left" "${session_list_and_name}${prefix_indicator}${lf_icon}" 
set "window-status-format" "${pane_list_names}${last_pane_indicator}"
set "window-status-current-format" "${zoomed_pane_indication}"
