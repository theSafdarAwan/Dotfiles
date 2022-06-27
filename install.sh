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
# 18. xplr
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
# 38. calibre
# 39. gimp
# 40. inkscape
# 41. blender
# 42. viewnior
# 43. virtualbox

# TODO: have to do the 44 one
# 44. linux419-virtualbox-host-modules

# 45. neofetch
# 46. bat
# 47. darktable
# 48. kdenlive
# 49. lazygit
# 50. obs-studio
# 51. tipp10
# 52. vlc


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


# Installing nvim language servers
##################### lua
# clone project
<< 'COMMENT' 
mkdir ~/safdar-local
cd ~/safdar-local

git clone  --depth=1 https://github.com/sumneko/lua-language-server
cd lua-language-server
git submodule update --depth 1 --init --recursive 

cd 3rd/luamake
./compile/install.sh
cd ../..
./3rd/luamake/luamake rebuild

./bin/lua-language-server
COMMENT

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
