sudo virt-install \
    --name alma95 \
    --memory 2048 --vcpus 1 \
    --disk path=/home/bravo/virt-images/alma95.qcow2,format=qcow2,size=20 \
    --graphics none \
    --os-variant almalinux9 \
    --cdrom /home/bravo/isos/AlmaLinux-9-latest-x86_64-boot.iso \
    --network=default \
    --autoconsole text
