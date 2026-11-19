sudo virt-install \
    --name ol810teste \
    --memory 4096 \
    --vcpus 2 \
    --graphics none \
    --boot uefi \
    --disk pool=myhomepool,format=qcow2,size=40 \
    --disk pool=myhomepool,format=qcow2,size=10 \
    --os-variant ol8.10 \
    --location ~/isos/OracleLinux-R8-U10-x86_64-dvd.iso \
    --network=default \
    --initrd-inject /home/bravo/vms/ks2.cfg \
    --extra-args="inst.ks=file:/ks2.cfg console=tty0 console=ttyS0,115200n8"

