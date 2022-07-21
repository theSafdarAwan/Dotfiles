#!/bin/bash
onedark_black="#282A36"
onedark_black2="#232531"
onedark_blue="#61afef"
onedark_yellow="#fccf6c"
onedark_red="#ec6b64"
onedark_white="#abb2bf"
onedark_green="#71f094"
onedark_visual_grey="#373844"
onedark_comment_grey="#5a5c68"

# get() {
#    local option=$1
#    local default_value=$2
#    local option_value="$(tmux show-option -gqv "$option")"
#
#    if [ -z "$option_value" ]; then
#       echo "$default_value"
#    else
#       echo "$option_value"
#    fi
# }

set() {
   local option=$1
   local value=$2
   tmux set-option -gq "$option" "$value"
}

setw() {
   local option=$1
   local value=$2
   tmux set-window-option -gq "$option" "$value"
}

set "status" "on"
set "status-justify" "left"

set "status-left-length" "100"
set "status-right-length" "100"
set "status-right-attr" "none"

set "message-fg" "$onedark_white"
set "message-bg" "$onedark_black"

set "message-command-fg" "$onedark_white"
set "message-command-bg" "$onedark_black"

set "status-attr" "none"
set "status-left-attr" "none"

setw "window-status-fg" "$onedark_black"
setw "window-status-bg" "$onedark_black"
setw "window-status-attr" "none"

setw "window-status-activity-bg" "$onedark_black"
setw "window-status-activity-fg" "$onedark_black"
setw "window-status-activity-attr" "none"

setw "window-status-separator" ""

set "window-style" "fg=$onedark_white"
set "window-active-style" "fg=$onedark_white"

set "pane-border-fg" "$onedark_white"
set "pane-border-bg" "$onedark_black"
set "pane-active-border-fg" "$onedark_green"
set "pane-active-border-bg" "$onedark_black"

set "display-panes-active-colour" "$onedark_yellow"
set "display-panes-colour" "$onedark_blue"

set "status-bg" "$onedark_black2"
set "status-fg" "$onedark_white"

set "@prefix_highlight_fg" "$onedark_black"
set "@prefix_highlight_bg" "$onedark_green"
set "@prefix_highlight_copy_mode_attr" "fg=$onedark_black,bg=$onedark_green"
set "@prefix_highlight_output_prefix" "  "

set "status-right" "#[fg=$onedark_red]#{continuum_status}                                         #[fg=$onedark_white,bg=$onedark_black2,nobold,nounderscore,noitalics]#[fg=$onedark_black,bg=$onedark_white,bold] %d-%m-%Y #[fg=$onedark_black,bg=$onedark_white]#[fg=$onedark_red,bg=$onedark_black] %A"
set "status-left" "#[fg=$onedark_red,bg=$onedark_black,bold] #S #{prefix_highlight}#[fg=$onedark_black,bg=$onedark_white] #[fg=$onedark_black,bg=$onedark_white]#I #[fg=$onedark_white,bg=$onedark_black2]"

set "window-status-format" "#[fg=$onedark_white] #I:#W "
set "window-status-current-format" "#[fg=$onedark_yellow,nobold] #I:#W*"
