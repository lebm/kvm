sudo virt-install \
    --name olam --memory 4096 --vcpus 2 \
    --graphics none \
    --disk pool=myhomepool,format=qcow2,size=40 \
    --os-variant ol9-unknown  --location ~/isos/OracleLinux-R9-U8-x86_64-dvd.iso \
    --network=default \
    --initrd-inject /home/bravo/vms/ks.cfg \
    --graphics none \
    --extra-args="inst.ks=file:/ks.cfg console=tty0 console=ttyS0,115200n8"

