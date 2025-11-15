#!/bin/bash
vscode_dark_black="#1F111A"
vscode_dark_black2="#1f1f1f"
vscode_dark_white="#abb2bf"
vscode_dark_yellow="#e09577"
vscode_dark_red="#D16969"
vscode_dark_blue="#61afef"
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

set "mode-style" "bg=$vscode_dark_comment_grey,fg=$vscode_dark_white"

set "clock-mode-colour" "$vscode_dark_red"

set "fill-character" "-"

set "popup-border-style" "fg=$vscode_dark_blue"
set "popup-border-lines" "rounded"

set "status" "on"
set "status-justify" "left"

set "status-left-length" "100"
set "status-right-length" "100"
set "status-right-attr" "none"

set "message-command-style" "fg=$vscode_dark_yellow,bg=$vscode_dark_black"

set "message-style" "fg=$vscode_dark_yellow,bg=$vscode_dark_black"

set "status-attr" "none"
set "status-left-attr" "none"

setw "window-status-fg" "$vscode_dark_black"
setw "window-status-bg" "$vscode_dark_black"
setw "window-status-attr" "none"

setw "window-status-activity-bg" "$vscode_dark_black"
setw "window-status-activity-fg" "$vscode_dark_black"
setw "window-status-activity-attr" "none"

setw "window-status-separator" " |"

set "window-style" "fg=$vscode_dark_white"
set "window-active-style" "fg=$vscode_dark_white"

set "pane-border-style" "fg=$vscode_dark_visual_grey,bg=$vscode_dark_black"
set "pane-active-border-style" "fg=$vscode_dark_comment_grey,bg=$vscode_dark_black"

set "display-panes-active-colour" "$vscode_dark_yellow"
set "display-panes-colour" "$vscode_dark_blue"

set "status-style" "fg=$vscode_dark_comment_grey,bg=$vscode_dark_black2"
