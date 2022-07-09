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

source "$ZDOTDIR/zsh-antigen"
# >>>>>>>> This is a custom prompt but i use starship
# source "$ZDOTDIR/zsh-prompt"
#
source "$ZDOTDIR/zsh-settings"
source "$ZDOTDIR/zsh-alias"
source "$ZDOTDIR/zsh-path"
# source "$ZDOTDIR/zsh-insulter"
source "$ZDOTDIR/zsh-fzf-tab"
source "$ZDOTDIR/zsh-vi-mode"
source "$ZDOTDIR/zsh-keybinds"
source "$ZDOTDIR/zsh-dracula"
source "$ZDOTDIR/zsh-syntax-highlighting-dracula.sh"
source "$ZDOTDIR/zsh-trash.sh"
source "$ZDOTDIR/zsh-nnn"

command_not_found_handler () {
    local life_Warning=(
        "
                      ¯\_(ツ)_/¯
        "
        # hey! Mr. type things correctly life doesen't gives 
        # you second chance but i am giving you. :)
    )

    printf "$(tput bold)$(tput setaf 1)$(shuf -n 1 -e "${life_Warning[@]}")$(tput sgr0)" | lolcat
    echo ""

    # Return the exit code normally returned on invalid command
    return 127
}

# neofetch --config $HOME/.config/neofetch/sterm.conf --source $HOME/.config/neofetch/safdar_in_box.txt | lolcat
