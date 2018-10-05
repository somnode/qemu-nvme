# sudo x86_64-softmmu/qemu-system-x86_64 -serial mon:stdio -m 4G -smp 1 --enable-kvm -hda u14s.qcow2 -vnc :1 -drive file=/hdd/images/ocssd_backend.img,if=none,id=mynvme -device nvme,drive=mynvme,serial=deadbeef
sudo x86_64-softmmu/qemu-system-x86_64 -serial mon:stdio -m 4G -smp 1 \
--enable-kvm -hda $(pwd)/../images/u14s.qcow2 \
-drive file=$(pwd)/../images/ocssd_backend.img,if=none,id=mynvme -device nvme,drive=mynvme,serial=deadbeef,lnum_pu=4,meta=16,mc=3,namespaces=1,nlbaf=5,lba_index=3,mdts=10,lsec_size=4096 #,lbbtable=bbtable.qemu,lmetadata=meta.qemu
