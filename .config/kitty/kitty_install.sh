#!/bin/bash

# Test
# curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin installer=nightly

# Build
#rm -rf ~/.config/kitty/kitty
#git clone https://github.com/kovidgoyal/kitty ~/.config/kitty/kitty
#cd ~/.config/kitty/kitty
# ensure this dependencies on Linux
# libdbus-1-dev libxcursor-dev libxrandr-dev libxi-dev libxinerama-dev libgl1-mesa-dev libxkbcommon-x11-dev libfontconfig-dev libx11-xcb-dev liblcms2-dev libpython3-dev librsync-dev
# or these on MacOS
# python3 harfbuzz
#make
#sudo ln -s ~/.config/kitty/kitty/kitty/launcher/kitty /usr/local/bin/kitty

# Package
sudo apt-get install kitty
