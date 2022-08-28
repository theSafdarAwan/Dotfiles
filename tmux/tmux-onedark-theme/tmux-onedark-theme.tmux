#!/bin/bash
dracula_black="#282A36"
dracula_black2="#232531"
dracula_blue="#61afef"
dracula_yellow="#fccf6c"
dracula_red="#ec6b64"
dracula_white="#abb2bf"
dracula_green="#71f094"
dracula_visual_grey="#373844"
dracula_comment_grey="#5a5c68"

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

set "message-fg" "$dracula_white"
set "message-bg" "$dracula_black"

set "message-command-fg" "$dracula_white"
set "message-command-bg" "$dracula_black"

set "status-attr" "none"
set "status-left-attr" "none"

setw "window-status-fg" "$dracula_black"
setw "window-status-bg" "$dracula_black"
setw "window-status-attr" "none"

setw "window-status-activity-bg" "$dracula_black"
setw "window-status-activity-fg" "$dracula_black"
setw "window-status-activity-attr" "none"

setw "window-status-separator" ""
set "?window_zoomed_flag" "$dracula_yellow"

set "window-style" "fg=$dracula_white"
set "window-active-style" "fg=$dracula_white"

set "pane-border-fg" "$dracula_white"
set "pane-border-bg" "$dracula_black"
set "pane-active-border-fg" "$dracula_green"
set "pane-active-border-bg" "$dracula_black"

set "display-panes-active-colour" "$dracula_yellow"
set "display-panes-colour" "$dracula_blue"

set "status-bg" "$dracula_black2"
set "status-fg" "$dracula_white"

set "@prefix_highlight_fg" "$dracula_black"
set "@prefix_highlight_bg" "$dracula_green"
set "@prefix_highlight_copy_mode_attr" "fg=$dracula_black,bg=$dracula_green"
set "@prefix_highlight_output_prefix" "  "

set "status-right" "#[fg=$dracula_white,bg=$dracula_black2,nobold,nounderscore,noitalics]#[fg=$dracula_black,bg=$dracula_white,bold] %d-%m-%Y #[fg=$dracula_black,bg=$dracula_white]#[fg=$dracula_red,bg=$dracula_black] %A"
set "status-left" "#[fg=$dracula_red,bg=$dracula_black,bold] #S #{prefix_highlight}#[fg=$dracula_black,bg=$dracula_white] #[fg=$dracula_black,bg=$dracula_white]#I #[fg=$dracula_white,bg=$dracula_black2]"

set "window-status-format" " #[fg=$dracula_white]#I:#W#(printf '%%s\n' '#F' | sed 's/-/^/')"
set "window-status-current-format" " #[fg=$dracula_yellow,nobold]#{?window_zoomed_flag,#[fg=$dracula_red],}#I:#W*"
