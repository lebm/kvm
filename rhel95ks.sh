sudo virt-install \
    --name rhel95 \
    --memory 2048 --vcpus 1 \
    --disk path=/home/bravo/virt-images/rhel95.qcow2,format=qcow2,size=20 \
    --graphics none \
    --os-variant rhel9.5 \
    --location /home/bravo/isos/rhel-9.5-x86_64-dvd.iso \
    --network=default \
    --initrd-inject /home/bravo/vms/ks.cfg \
    --extra-args="inst.ks=file:/ks.cfg console=tty0 console=ttyS0,115200n8"
