sudo virt-install \
    --name ol98teste2 \
    --memory 8192 \
    --vcpus 2 \
    --graphics none \
    --boot uefi \
    --disk pool=myhomepool,format=qcow2,size=40 \
    --disk pool=myhomepool,format=qcow2,size=10 \
    --os-variant ol9-unknown \
    --location ~/isos/OracleLinux-R9-U8-x86_64-dvd.iso \
    --network=default \
    --initrd-inject /home/bravo/vms/ks3.cfg \
    --extra-args="inst.ks=file:/ks3.cfg console=tty0 console=ttyS0,115200n8"

