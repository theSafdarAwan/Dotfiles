#!/bin/bash
vscode_dark_black="#1F111A"
vscode_dark_black2="#1f1f1f"
vscode_dark_white="#abb2bf"
vscode_dark_yellow="#e09577"
vscode_dark_red="#D16969"
vscode_dark_blue="#51afef"
vscode_dark_green="#007100"
vscode_dark_visual_grey="#373844"
vscode_dark_comment_grey="#5a5c68"
vscode_dark_gray_shade="#808080"
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
color_gb="#[fg=$vscode_dark_blue,bg=$vscode_dark_black,]"
color_gb2="#[fg=$vscode_dark_blue,bg=$vscode_dark_black2,]"
color_bw="#[fg=$vscode_dark_black2,bg=$vscode_dark_blue,]"
color_bw2="#[fg=$vscode_dark_black2,bg=$vscode_dark_blue,]"
color_yb2="#[fg=$vscode_dark_yellow,bg=$vscode_dark_black2]"
color_yb="#[fg=$vscode_dark_yellow,bg=$vscode_dark_black]"
color_rb="#[fg=$vscode_dark_red,bg=$vscode_dark_black,]"
color_bb="#[fg=$vscode_dark_white,bg=$vscode_dark_black,]"
color_bg="#[fg=$vscode_dark_comment_grey,bg=$vscode_dark_black,]"
color_bg2="#[fg=$vscode_dark_comment_grey,bg=$vscode_dark_black2,]"
#>>> icon's
lf_icon=" #[fg=$vscode_dark_blue,bg=$vscode_dark_black2]${color_gb}"
rf_icon=" #[fg=$vscode_dark_blue,bg=$vscode_dark_black2]${color_gb}"
lf_icon_black="#[fg=$vscode_dark_black,bg=$vscode_dark_blue]${color_gb}"
rf_icon_black="#[fg=$vscode_dark_blue,bg=$vscode_dark_black]${color_gb}"
hrf_icon_black="#[fg=$vscode_dark_black]${color_gb}"
hrf_icon_white="#[fg=$vscode_dark_blue]${color_gb}"
lrf_icon_black="#[fg=$vscode_dark_black]${color_gb}"
lrf_icon_white="#[fg=$vscode_dark_blue]${color_gb}"
space_white="#[bg=$vscode_dark_blue] "
space_black2="#[bg=$vscode_dark_black2] "
space_black="#[bg=$vscode_dark_black] "

#>>> modules name's variables < for modularity convenience 
node_version="$(node --version | cut -f 1 -d ' ')"
node="#[fg=$vscode_dark_white] node${color_bg2}:${color_bg2}$node_version${color_gb}"

window_list_names="${color_bb} #I:#W"
last_pane_indicator="#(printf '%%s\n' '#F' | sed 's/-/!/')"
zoomed_pane_indication=" ${color_yb2}#[bold]#{?window_zoomed_flag,#[fg=$vscode_dark_red],}#I:#W*${color_gb}"

prefix_indicator="${color_bw} #{s/root//:client_key_table}${color_bw} "

date="${color_bw}%d-%m-%Y"

day="${color_bb} %A"

session_list="$(tmux ls | wc --lines)"
# session_id="#(printf '%%s\n' '#{session_id}' | sed 's/\\$//')"
session_id="#{s/\\$//:session_id}"

session_list_and_name="${color_yb}${session_list}${color_bb}${color_bg}(${color_rb}${session_id}${color_bg}:${color_gb}#S${color_bg})"

#>>> status bar position's
set "status-right" "${day}${space_black}${space_white}${date}${rf_icon}${hrf_icon_black}"
set "status-left" "${prefix_indicator}${space_black}${session_list_and_name}" 
set "window-status-format" "${window_list_names}${last_pane_indicator}"
set "window-status-current-format" "${zoomed_pane_indication}"
