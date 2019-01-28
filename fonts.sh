mkdir compile
cd compile
wget http://mirror.lihnidos.org/GNU/savannah/freetype/freetype-2.3.11.tar.gz
wget http://cairographics.org/releases/cairo-1.8.8.tar.gz
wget http://xorg.freedesktop.org/releases/individual/lib/libXft-2.1.14.tar.gz
tar xvfz freetype-2.3.11.tar.gz
tar xvfz cairo-1.8.8.tar.gz
tar xvfz libXft-2.1.14.tar.gz
cd cairo-1.8.8
wget http://aur.archlinux.org/packages/cairo-cleartype/cairo-cleartype/cairo-1.2.4-lcd-cleartype-like.diff 
patch -Np1 -i cairo-1.2.4-lcd-cleartype-like.diff
./configure --prefix=/usr
make
sudo make install
make clean
cd ../libXft-2.1.14
http://aur.archlinux.org/packages/libxft-cleartype/libxft-cleartype/libXft-2.1.14-lcd-cleartype.patch
patch -Np1 -i libXft-2.1.14-lcd-cleartype.patch
./configure --prefix=/usr
make
sudo make install
make clean
cd ../freetype-2.3.11
wget http://aur.archlinux.org/packages/freetype2-cleartype/freetype2-cleartype/bytecode.patch
wget http://aur.archlinux.org/packages/freetype2-cleartype/freetype2-cleartype/freetype-2.2.1-subpixel-disable-quantization.diff
wget http://aur.archlinux.org/packages/freetype2-cleartype/freetype2-cleartype/freetype-2.3.0-enable-spr.patch
patch -Np0 -i bytecode.patch
patch -Np1 -i freetype-2.2.1-subpixel-disable-quantization.diff
patch -Np1 -i freetype-2.3.0-enable-spr.patch
./configure --prefix=/usr
make 
sudo make install
make clean
cd ..
echo done!
