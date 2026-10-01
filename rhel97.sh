sudo virt-install \
    --name rhel97 --memory 2048 --vcpus 1 \
    --disk path=/home/bravo/virt-images/rhel97.qcow2,format=qcow2,size=20 \
    --os-variant rhel9.7 --location /home/bravo/isos/rhel-9.7-x86_64-dvd.iso \
    --network=default \
    --initrd-inject /home/bravo/vms/ks.cfg \
    --graphics none --extra-args='console=ttyS0' \
    --extra-args="inst.ks=file:/ks.cfg console=tty0 console=ttyS0,115200n8"
