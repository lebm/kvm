sudo virt-install \
    --name olam --memory 4096 --vcpus 2 \
    --graphics none \
    --disk path=/home/bravo/virt-images/olam.qcow2,format=qcow2,size=40 \
    --os-variant ol9-unknown  --location /home/bravo/isos/OracleLinux-R9-U8-x86_64-dvd.iso \
    --network=default \
    --initrd-inject /home/bravo/vms/ks.cfg \
    --graphics none \
    --extra-args="inst.ks=file:/ks.cfg console=tty0 console=ttyS0,115200n8"

