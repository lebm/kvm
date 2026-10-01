export NOME=rocky8.10a
sudo virt-install \
    --name $NOME \
    --memory 2048 --vcpus 1 \
    --disk path=/home/bravo/virt-images/${NOME}.qcow2,format=qcow2,size=20 \
    --graphics none \
    --os-variant rocky8 \
    --location /home/bravo/isos/Rocky-8.10-x86_64-boot.iso \
    --network=default \
    --initrd-inject /home/bravo/vms/ks.cfg \
    --extra-args="inst.ks=file:/ks.cfg console=tty0 console=ttyS0,115200n8"
