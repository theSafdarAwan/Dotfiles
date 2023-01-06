#!/bin/bash

##################### install programs through pacman
# - polybar
# - plasma-desktop
# - plasma-browser-integration
# - dolphin
# - rofi
# - rofi-emoji
# - firefox
# - zsh
# - starship
# - git
# - stow
# - alacritty
# - kitty
# - yay 
# - pulseaudio
# - fzf
# - tmux
# - exa
# - lolcat
# - mpv
# - imv
# - viewnior
# - mpd 
# - ncmpcpp
# - mpc
# - fd
# - clang
# - nasm
# - ninja
# - gparted
# - ripgrep
# - cmake
# - unzip
# - zsh-syntax-highlighting
# - zoxide
# - rust
# - rust-analyzer
# - luarocks
# - discord
# - ksnip
# - nodejs
# - npm
# - go
# - python
# - python-pip
# - stardict
# - qbittorrent
# - gimp
# - inkscape
# - blender
# - viewnior
# - virtualbox
# - keepassxc

# - dust
# - bat
# - darktable
# - kdenlive
# - lazygit
# - obs-studio
# - tipp10
# - texlive-core
#>>>>>>>>>>>> Thumbnail Utilitie's
# - ffmpegthumbnailer
# - ffmpegthumbs
# - kdegraphics-thumbnailers
# - poppler-glib
# - tumbler
# - freetype2
# - libgsf
# - totem
# - gnome-epub-thumbnailer 

# - ansible
# - redshift
# - feh

# - sndio

#>>>>>> Books readers
# - foliate
# - evince

# - sxiv
# - httrack

# - sxiv
# - xterm
# - zathura
# - zathura-pdf-mupdf

# Games
# - supertuxkart
# - minetest
# - openttd
# - warsow
# - 0ad

# - obsidian
# - qalculate-qt
# - wmctrl
# - cmatrix
# - links
# - noto-fonts-emoji
# - nitrogen
# - ardour
# - audacity
# - libreoffice
# - wallutils
# - thunderbird
# - clipgrab
# - cool-retro-term

##################### install through yay
# - awesome-git
# - neovim-nightly-bin
# - wezterm
# - klavaro-svn

# - zsh-vi-mode
# - google-chrome
# - giara-git
# - stacer
# - stardict-wordnet
# - scid
# - htop-vim
# - btop
# - weechat-git

#>>>>>>>>>>>> Thumbnail Utilitie's
# - raw-thumbnailer
# - f3d
# - folderpreview
# - mcomix

# - cava

# - pureref
# - dupeguru
# - bleachbit
# - macchina
# - autotiling-git
# - nnn-nerd
# - deadbeef
# - tabbed-git
# - picom-ibhagwan-git

# - peazip-gtk2-bin
# - kmonad-git
# - todoist
# - anki
# - dasht

# - vim-clipboard

# - protonvpn-cli
# - powershell-bin

########################## Fonts
# - ttf-ms-fonts
# - ttf-vista-fonts
# - nerd-fonts-complete

####################### Install through Snaps
# - xonotic
# - todoist
# - fortune-cm

########### Cargo
# cargo install stylua
# cargo install ttyper

########## go
# go install golang.org/x/tools/gopls@latest

########### luarocks
# sudo luarocks install luacheck

############ npm
# sudo npm i -g live-server
# sudo npm i -g htmlhint

############ pip
# pip install pyright
# pip install flake8
# pip install black

#>>>>>>>>>>>>>>>> Install zsh-antigen
# mkdir ~/zsh-plugins
# curl -L git.io/antigen > ~/zsh-plugins/antigen.zsh

#>>>>>>>>>>> Change the default browser to terminal browser you chose in you .rc for gui applications
# xdg-mime default browser.desktop x-scheme-handler/http
# xdg-mime default browser.desktop x-scheme-handler/https

#>>>>>>>>>>> Enable redshift
# systemctl --user enable redshift.service --now

#>>>>>>>>>>>>>>>>> Polybar extra modules
# pip install --upgrade google-api-python-client google-auth-httplib2 google-auth-oauthlib

#>>>>>>>>>>>>>>> Progress for copying and moving in terminal
# curl https://raw.githubusercontent.com/jarun/advcpmv/master/install.sh --create-dirs -o ./advcpmv/install.sh && (cd advcpmv && sh install.sh)

#>>>>>>>>>>>>> Setting up arch
# sudo localectl set-locale LC_TIME=en_US.utf8

#>>>>>>>>>>>>> Install snap
# git clone https://aur.archlinux.org/snapd.git
# cd snapd
# makepkg -si

# sudo systemctl enable --now snapd.socket
# sudo ln -s /var/lib/snapd/snap /snap

#>>>>>>>>> Install the tmux plugin manager
# git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

#>>>>>>>>> Install c libraries
# git clone https://github.com/zoelabbb/conio.h.git
# cd conio.h
# sudo make install

#>>>>>>>>>>>>> Color full Emojis config
# Put this in the /etc/fonts/local.conf
# <?xml version="1.0"?>
# <!DOCTYPE fontconfig SYSTEM "fonts.dtd">
# <fontconfig>
#  <alias>
#    <family>sans-serif</family>
#    <prefer>
#      <family>Noto Sans</family>
#      <family>Noto Color Emoji</family>
#      <family>Noto Emoji</family>
#      <family>DejaVu Sans</family>
#    </prefer> 
#  </alias>
#
#  <alias>
#    <family>serif</family>
#    <prefer>
#      <family>Noto Serif</family>
#      <family>Noto Color Emoji</family>
#      <family>Noto Emoji</family>
#      <family>DejaVu Serif</family>
#    </prefer>
#  </alias>
#
#  <alias>
#   <family>monospace</family>
#   <prefer>
#     <family>Noto Mono</family>
#     <family>Noto Color Emoji</family>
#     <family>Noto Emoji</family>
#    </prefer>
#  </alias>
# </fontconfig>
