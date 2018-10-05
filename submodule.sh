sudo rm .gitmodules

sudo rm -rf roms/vgabios
git submodule add git://git.qemu-project.org/vgabios.git/ roms/vgabios

sudo rm -rf roms/seabios
git submodule add git://git.qemu-project.org/seabios.git/ roms/seabios

sudo rm -rf roms/SLOF
git submodule add git://git.qemu-project.org/SLOF.git roms/SLOF

sudo rm -rf roms/ipxe
git submodule add git://git.qemu-project.org/ipxe.git roms/ipxe

sudo rm -rf roms/openbios
git submodule add git://git.qemu-project.org/openbios.git roms/openbios

sudo rm -rf roms/openhackware
git submodule add git://git.qemu-project.org/openhackware.git roms/openhackware

sudo rm -rf roms/qemu-palcode
git submodule add git://github.com/rth7680/qemu-palcode.git roms/qemu-palcode

sudo rm -rf roms/sgabios
git submodule add git://git.qemu-project.org/sgabios.git roms/sgabios

sudo rm -rf pixman
git submodule add git://anongit.freedesktop.org/pixman pixman

sudo rm -rf dtc
git submodule add git://git.qemu-project.org/dtc.git dtc

sudo rm -rf roms/u-boot
git submodule add git://git.qemu-project.org/u-boot.git roms/u-boot
