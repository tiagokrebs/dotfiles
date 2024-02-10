#!/bin/bash

rm -rf ~/.config/nvim/neovim
git clone https://github.com/neovim/neovim.git ~/.config/nvim/neovim

sudo rm /usr/local/bin/nvim
sudo rm -r /usr/local/share/nvim/
sudo rm -rf ~/.local/share/nvim
# sudo rm -rf ~/.config/nvim

cd ~/.config/nvim/neovim

git checkout release-0.7

make CMAKE_BUILD_TYPE=Release

sudo make install

sudo rm -rf ~/.config/nvim/neovim
