sudo apt-get install linux-headers-$(uname -r)
sudo apt-get install zlib1g-dev
sudo apt-get install libsdl-dev -y
sudo apt-get install libaio-dev -y
sudo apt-get install autoconf -y
sudo apt-get install libtool -y
git submodule update --init pixman
cd pixman; sudo libtoolize --force; sudo aclocal; sudo autoheader; sudo automake --force-missing --add-missing; sudo autoconf; sudo CFLAGS="-O2 -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -pthread -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -g  -fPIC -m64  " /home/somnode/qemu-nvme/pixman/configure  --disable-gtk --disable-shared --enable-static;
cd ..
sudo ./configure --enable-kvm --target-list=x86_64-softmmu --enable-linux-aio --disable-werror --disable-xen --prefix=$(pwd)
sudo make
sudo make install
