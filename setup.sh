#!/bin/sh

git clone git://git.savannah.gnu.org/screen.git ./screen.git
cd ./screen.git/src
./autogen.sh

for x in Makefile.in config.h.in configure process.c pty.c screen.c window.c; do
  curl "http://www.opensource.apple.com/source/screen/screen-16/patches/${x}.diff?txt" | patch -p0
done

# curl -O https://raw.github.com/pgib/screen/master/src/vproc_priv.h
cp ../../vproc_priv.h ./

./configure --enable-colors256 --mandir=/usr/local/Cellar/screen/HEAD/share/man --infodir=/usr/local/Cellar/screen/HEAD/share/info --prefix=/usr/local/Cellar/screen/HEAD
make
make install
brew link screen

rm -rf screen.git
