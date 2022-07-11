#!/bin/bash

##################### installed programs through pacman
# 1. polybar
# 2. kitty
# 3. rofi
# 4. firefox
# 5. zsh
# 6. starship
# 7. pcmanfm
# 8. git
# 9. stow
# 10. yay 
# 11. pulseaudio
# 12. fzf
# 13. tmux
# 14. exa
# 15. lolcat
# 16. qutebrowser
# 17. mpv
# 18. nnn
# 19. clang
# 20. ninja
# 21. gparted
# 22. ripgrep
# 23. cmake
# 24. unzip
# 25. zsh-syntax-highlighting
# 26. rust
# 27. luarocks
# 28. discord
# 29. ksnip
# 30. nodejs
# 31. npm
# 32. rust-analyzer
# 32. go
# 33. python
# 34. python-pip
# 36. stardict
# 37. qbittorrent
# 39. gimp
# 40. inkscape
# 41. blender
# 42. viewnior
# 43. virtualbox
# WARN: you have to install the linux[x]-virtualbox-host-modules with respect to your kernal version
# 44. linux517-virtualbox-host-modules
# 45. virtualbox-host-modules-arch

# 46. dust
# 47. bat
# 48. darktable
# 49. kdenlive
# 50. lazygit
# 51. obs-studio
# 52. tipp10
# 53. vlc
#>>>>>>>>>>>> Thumbnail Utilitie's
# 54. ffmpegthumbnailer
# 55. poppler-glib
# 56. tumbler
# 57. freetype2
# 58. libgsf
# 59. totem
# 60. gnome-epub-thumbnailer 

# 61. redshift
# 62. ansible
# 63. feh

#>>>>>> Books readers
# 64. evince
# 65. foliate

# 66. imv
# 67. ueberzug
# 68. httrack

#>>>>>> Games
# 69. supertuxkart

##################### installed through yay
# 1. neovim-nightly-bin
# 2. notion-app
# 3. zsh-vi-mode
# 4. nvim-packer-git
# 5. google-chrome
# 6. nerd-fonts-complete
# 7. stacer
# 8. stardict-wordnet
# 9. figma-linux
# 10. scid
# 11. drawio-desktop
# 12. google-docs-nativefier
# 13. htop-vim
# 14. tmuxinator

#>>>>>>>>>>>> Thumbnail Utilitie's
# 15. raw-thumbnailer
# 16. f3d
# 17. folderpreview
# 18. mcomix

# 19. pureref
# 20. dupeguru
# 21. bleachbit
# 22. freshfetch-git
# 23. autotiling-git


# Installing nvim language servers
##################### lua
# clone project
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

########### luarocks
# sudo luarocks install luacheck

############ npm
# sudo npm install -g vim-language-server
# sudo npm install -g @tailwindcss/language-server
# sudo npm install -g typescript typescript-language-server
# sudo npm i -g vscode-langservers-extracted
# sudo npm i -g bash-language-server

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
