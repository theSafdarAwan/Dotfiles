#!/bin/bash

##################### install programs through pacman
# - emacs
# - tlp
# - tlpui
# - ethtool
# - smartmontools
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
# - dabtap
# - rust-analyzer
# - luarocks
# - discord
# - flameshot
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
# - linux-headers
# - keepassxc
# - figlet
# - tree-sitter-cli

# - screenkey

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
# - blight
# - evtest
# - awesome-git
# - neovim-nightly-bin
# - wezterm
# - klavaro-svn
# - ldoc
# - figma-linux

# - zsh-vi-mode
# - google-chrome
# - giara-git
# - stacer
# - stardict-wordnet
# - scid
# - htop-vim
# - btop
# - weechat-git
# - zotero

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






---------------------------------






########################## Fonts
# - ttf-ms-fonts
# - ttf-vista-fonts
# - nerd-fonts-complete

####################### Install through Snaps
# - todoist
# - fortune-cm
#----- Game
# - xonotic

########### Cargo
# sudo cargo install stylua
# sudo cargo install ttyper
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

### paste this to /usr/share/applications/google-chrome-stable.desktop
#****
# [Desktop Entry]
# Type=Application
# Name=google-chrome-stable
# Comment=Google Chrome Browser
# Terminal=false
# Exec=google-chrome-stable
# Categories=Network;WebBrowser
#****


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


# kmonad

# Add self to the input and uinput groups
sudo usermod -aG input $USER
sudo groupadd uinput
sudo usermod -aG uinput $USER

echo 'KERNEL=="uinput", MODE="0660", GROUP="uinput", OPTIONS+="static_node=uinput"' | sudo tee /etc/udev/rules.d/90-uinput.rules

# This seems to be needed because uinput isn't compiled as a loadable module these days.
# See https://github.com/chrippa/ds4drv/issues/93#issuecomment-265300511
echo uinput | sudo tee /etc/modules-load.d/uinput.conf





### to solve the buzzing noise for microphone
sudo vim /etc/pulse/default.pa
## Add Below line
load-module module-echo-cancel  
## Save & Close 
pulseaudio -k
pulseaudio --start 


### Solve the buzzing from the front audio port

sudo vim /etc/modprobe.d/audio_disable_powersave.conf
options snd-hda-intel power_save=1

sudo mkinitcpio -p linux*

reboot
