# create a backend file by (e.g., 8GB)
cd ..
mkdir images
cd images
dd if=/dev/zero of=ocssd_backend.img bs=4K count=2097152

# create qemu img
sudo apt-get install qemu-utils
qemu-img create -f qcow2 u14s.qcow2 70G
# install ubuntu
sudo x86_64-softmmu/qemu-system-x86_64 -m 4G -smp 1 --enable-kvm -hda u14s.qcow2 -boot d -cdrom ubuntu-16.04.5-desktop-amd64.iso
