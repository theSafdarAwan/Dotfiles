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

set "mode-style" "bg=$dracula_comment_grey,fg=$dracula_white"

set "clock-mode-colour" "$dracula_red"

set "fill-character" "-"

set "popup-border-style" "fg=$dracula_yellow"
set "popup-border-lines" "rounded"

set "status" "on"
set "status-justify" "left"

set "status-left-length" "100"
set "status-right-length" "100"
set "status-right-attr" "none"

set "message-command-style" "fg=$dracula_yellow,bg=$dracula_black"

set "message-style" "fg=$dracula_yellow,bg=$dracula_black"

set "status-attr" "none"
set "status-left-attr" "none"

setw "window-status-fg" "$dracula_black"
setw "window-status-bg" "$dracula_black"
setw "window-status-attr" "none"

setw "window-status-activity-bg" "$dracula_black"
setw "window-status-activity-fg" "$dracula_black"
setw "window-status-activity-attr" "none"

setw "window-status-separator" " |"

set "window-style" "fg=$dracula_white"
set "window-active-style" "fg=$dracula_white"

set "pane-border-style" "fg=$dracula_visual_grey,bg=$dracula_black"
set "pane-active-border-style" "fg=$dracula_comment_grey,bg=$dracula_black"

set "display-panes-active-colour" "$dracula_yellow"
set "display-panes-colour" "$dracula_blue"

set "status-style" "fg=$dracula_comment_grey,bg=$dracula_black2"
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

set "mode-style" "bg=$dracula_comment_grey,fg=$dracula_white"

set "clock-mode-colour" "$dracula_red"

set "fill-character" "-"

set "popup-border-style" "fg=$dracula_yellow"
set "popup-border-lines" "rounded"

set "status" "on"
set "status-justify" "left"

set "status-left-length" "100"
set "status-right-length" "100"
set "status-right-attr" "none"

set "message-command-style" "fg=$dracula_yellow,bg=$dracula_black"

set "message-style" "fg=$dracula_yellow,bg=$dracula_black"

set "status-attr" "none"
set "status-left-attr" "none"

setw "window-status-fg" "$dracula_black"
setw "window-status-bg" "$dracula_black"
setw "window-status-attr" "none"

setw "window-status-activity-bg" "$dracula_black"
setw "window-status-activity-fg" "$dracula_black"
setw "window-status-activity-attr" "none"

setw "window-status-separator" " |"

set "window-style" "fg=$dracula_white"
set "window-active-style" "fg=$dracula_white"

set "pane-border-style" "fg=$dracula_visual_grey,bg=$dracula_black"
set "pane-active-border-style" "fg=$dracula_comment_grey,bg=$dracula_black"

set "display-panes-active-colour" "$dracula_yellow"
set "display-panes-colour" "$dracula_blue"

set "status-style" "fg=$dracula_comment_grey,bg=$dracula_black2"
