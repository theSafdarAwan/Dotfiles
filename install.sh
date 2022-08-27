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
# - yay 
# - pulseaudio
# - fzf
# - tmux
# - exa
# - lolcat
# - mpv
# - mpd 
# - ncmpcpp
# - mpc
# - fd
# - clang
# - ninja
# - gparted
# - ripgrep
# - cmake
# - unzip
# - zsh-syntax-highlighting
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

# WARN: you have to install the linux[x]-virtualbox-host-modules with respect to your kernal version
# - linux517-virtualbox-host-modules
# - virtualbox-host-modules-arch

# - dust
# - bat
# - darktable
# - kdenlive
# - lazygit
# - obs-studio
# - tipp10
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
# - nvim-packer-git
# - wezterm

# - zsh-vi-mode
# - google-chrome
# - giara-git
# - stacer
# - stardict-wordnet
# - scid
# - htop-vim
# - tmuxinator

#>>>>>>>>>>>> Thumbnail Utilitie's
# - raw-thumbnailer
# - f3d
# - folderpreview
# - mcomix

# - cava

# - pureref
# - dupeguru
# - bleachbit
# - freshfetch-git
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



# Installing nvim language servers
##################### lua
## clone project
# mkdir ~/safdar-local
# cd ~/safdar-local
#
# git clone  --depth=1 https://github.com/sumneko/lua-language-server
# cd lua-language-server
# git submodule update --depth 1 --init --recursive 
#
# cd 3rd/luamake
# ./compile/install.sh
# cd ../..
# ./3rd/luamake/luamake rebuild
#
# ./bin/lua-language-server

########### Cargo
# cargo install stylua
# cargo install ttyper

########### luarocks
# sudo luarocks install luacheck

############ npm
# sudo npm install -g vim-language-server
# sudo npm install -g @tailwindcss/language-server
# sudo npm install -g typescript typescript-language-server
# sudo npm i -g vscode-langservers-extracted
# sudo npm i -g bash-language-server
# sudo npm i -g live-server

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
# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#>>>>>>> how to start the tmux after bootup just install all the plugins for tmux then
# reload the tmux for sourcing the config file it will create a file in the .config/systemd/user/ called 
# tmux.service copy it to /etc/systemd/system then execute this command
# sudo systemctl enable --now tmux.service

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
