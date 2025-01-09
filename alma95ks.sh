sudo virt-install \
    --name alma95 \
    --memory 2048 --vcpus 1 \
    --disk path=/home/bravo/virt-images/alma95.qcow2,format=qcow2,size=20 \
    --graphics none \
    --os-variant almalinux9 \
    --location /home/bravo/isos/AlmaLinux-9.5-x86_64-minimal.iso \
    --network=default \
    --initrd-inject /home/bravo/vms/ks.cfg \
    --extra-args="inst.ks=file:/ks.cfg console=tty0 console=ttyS0,115200n8"
