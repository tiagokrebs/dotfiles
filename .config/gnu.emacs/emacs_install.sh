#/bin/bash

VERSION='28.1'

# apt
# sudo apt-get install libxaw7-dev libjpeg-dev libgif-dev libtiff-dev gnutls-bin libgnutls28-dev

wget https://ftp.gnu.org/gnu/emacs/emacs-$VERSION.tar.xz
tar -xf emacs-$VERSION.tar.xz
cd emacs-$VERSION
./configure
make
sudo make install
rm -rf emacs-$VERSION emacs-$VERSION.tar.xz

which emacs

exit 0
