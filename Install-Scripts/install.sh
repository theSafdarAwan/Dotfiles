#!/bin/bash

##################### install programs through pacman
# - emacs
# - aspell-en
# - polybar
# - handbrake
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
# - zellij
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
# - clisp
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
# - figlet

# screenkey

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
# - ldoc

# - zsh-vi-mode
# - google-chrome
# - giara-git
# - stacer
# - stardict-wordnet
# - scid
# - htop-vim
# - btop
# - weechat-git

# slop

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
# sudo cargo install stylua
# sudo cargo install ttyper
# sudo cargo install tree-sitter-cli
# sudo cargo install deno --locked
# cargo install --git https://github.com/loichyan/nerdfix

########## go
# go install golang.org/x/tools/gopls@latest
### install github cli
# git clone https://github.com/cli/cli.git gh-cli
# cd gh-cli
# sudo make install
# sudo mv bin/gh /bin/

########### luarocks
# sudo luarocks install luacheck
# sudo luarocks --global install LuaDoc

############ npm
# sudo npm i -g live-server
# sudo npm i -g htmlhint
# sudo npm i -g eslint
# sudo npm i -g stylelint

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

#>>>>>> install figlet fonts
# git clone https://github.com/xero/figlet-fonts.git
# sudo cp  figlet-fonts/* /usr/share/figlet/fonts/

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




# fstab drives config
# UUID=EA5861CF58619AD9 /home/safdar/Disks/UI     ntfs defaults,noatime 0 2
# UUID=f6df680a-21ca-4e75-a4ef-1873101e6a28 /home/safdar/Disks/StudyData     ext4 defaults,noatime 0 2
# UUID=0B9657181CE7893F /home/safdar/Disks/MediaDisk     ntfs defaults,noatime 0 2
