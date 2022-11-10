#!/bin/bash
rm -rf ~/.local/temp/builds/
mkdir -p ~/.local/temp/builds/
cd ~/.local/temp/builds/
git clone https://github.com/neovim/neovim
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install 
sudo mv .local/temp/builds/neovim/build/bin/nvim /usr/bin/
