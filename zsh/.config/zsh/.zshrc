export ZDOTDIR=$HOME/.config/zsh

# fm6000 -c random -g 15
# fm6000 -dog -c random -g 15
# colorscript.sh -r

eval "$(starship init zsh)"

# # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# # Initialization code that may require console input (password prompts, [y/n]
# # confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# # To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
# [[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

source "$ZDOTDIR/zsh-syntax-highlighting-dracula.sh"

source "$ZDOTDIR/zsh-antigen"
# >>>>>>>> This is a custom prompt but i use starship
# source "$ZDOTDIR/zsh-prompt"
#
source "$ZDOTDIR/zsh-settings"
source "$ZDOTDIR/zsh-default-programs"
source "$ZDOTDIR/zsh-alias"
source "$ZDOTDIR/zsh-path"
# source "$ZDOTDIR/zsh-insulter"
source "$ZDOTDIR/zsh-fzf-tab"
source "$ZDOTDIR/zsh-vi-mode"
source "$ZDOTDIR/zsh-keybinds"
source "$ZDOTDIR/zsh-dracula"
source "$ZDOTDIR/zsh-nnn"
# source "$ZDOTDIR/zsh-nnn-preview"

command_not_found_handler () {
    local life_Warning=(
        "
                      ¯\_(ツ)_/¯
        "
        "hey! Mr. type things correctly life doesen't gives
        you second chance but i am giving you. :)"
        "Are you even trying?!"
        "Bad."
        "Boooo!"
        "Haha, n00b!"
    )

    printf "$(tput bold)$(tput setaf 1)$(shuf -n 1 -e "${life_Warning[@]}")$(tput sgr0)" | lolcat
    echo ""

    # Return the exit code normally returned on invalid command
    return 127
}

# neofetch --config $HOME/.config/neofetch/sterm.conf --source $HOME/.config/neofetch/safdar_in_box.txt | lolcat
# TODO: write a function to check if other instance of the wezterm is active if so then don't execute the freshfetch
# freshfetch
macchina


# function precmd() {
#     if [ -z "$NEW_LINE_BEFORE_PROMPT" ]; then
#         NEW_LINE_BEFORE_PROMPT=1
#     elif [ "$NEW_LINE_BEFORE_PROMPT" -eq 1 ]; then
#         echo "\n"
#     fi
#     print -Pn "\e]0;zsh %(1j,%j job%(2j|s|); ,)%2~\a"
# }
# 
# function preexec {
#     printf "\033]0;%s\a" "$1"
# }
# 
# autoload -Uz vcs_info
# precmd_vcs_info() { vcs_info }
# precmd_functions+=( precmd_vcs_info )
# setopt prompt_subst
# zstyle ':vcs_info:git:*' formats '%b'
# zstyle ':vcs_info:*' enable git
# 
# function () {
#     if [[ $EUID == 0 ]]; then
#         local SUFFIX='%(?,%F{yellow},%F{red})%n%f:'
#     else
#         local SUFFIX='%(?,%F{yellow},%F{red})>%f'
#     fi
# 
#     PS1="%B${SUFFIX}%b "
#     if [[ -n $TMUX ]]; then
#         export RPS1="%F{green}\$vcs_info_msg_0_%f %B%(?..%{%F{red}%}(%?%)%{%f%})"
#     else
#         export RPS1="%F{green}\$vcs_info_msg_0_%f %B%(?..%{%F{red}%}(%?%)%{%f%}) %b%F{12}%2~%f"
#     fi
# }
# export SPROMPT="zsh: correct %F{red}'%R'%f to %F{green}'%r'%f [%B%Uy%u%bes, %B%Un%u%bo, %B%Ue%u%bdit, %B%Ua%u%bbort]? "
# 
# function zle-keymap-select {
# case $KEYMAP in
#     vicmd) echo -ne '\e[2 q';;
#     viins|main) echo -ne '\e[6 q';;
# esac
# }
# zle -N zle-keymap-select
# 
# _fix_cursor() {
#     echo -ne '\e[6 q'
# }
# 
# precmd_functions+=(_fix_cursor)
