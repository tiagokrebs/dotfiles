#/bin/bash

VERSION='28.2'
export CC="gcc-10"

# apt
sudo apt-get install gcc-10 libgccjit0 libgccjit-10-dev libxft-dev libcairo2-dev mailutils libxaw7-dev libjpeg-dev libgif-dev libtiff-dev gnutls-bin libgnutls28-dev

wget https://ftp.gnu.org/gnu/emacs/emacs-$VERSION.tar.xz
tar -xf emacs-$VERSION.tar.xz
cd emacs-$VERSION
./configure --with-json --with-native-compilation --with-cairo
make
sudo make install
cd ..
rm -rf emacs-$VERSION emacs-$VERSION.tar.xz

which emacs

exit 0
