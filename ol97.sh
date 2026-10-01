sudo virt-install \
    --name ol97 --memory 2048 --vcpus 1 \
    --graphics none \
    --disk path=/home/bravo/virt-images/ol97.qcow2,format=qcow2,size=20 \
    --os-variant ol9-unknown  --location /home/bravo/isos/OracleLinux-R9-U7-x86_64-dvd.iso \
    --network=default \
    --initrd-inject /home/bravo/vms/ks.cfg \
    --graphics none \
    --extra-args="inst.ks=file:/ks.cfg console=tty0 console=ttyS0,115200n8"
