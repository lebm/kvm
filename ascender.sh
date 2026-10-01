export NOME=ascender
sudo virt-install \
    --name $NOME \
    --memory 8192 --vcpus 4 \
    --disk path=/home/bravo/virt-images/${NOME}.qcow2,format=qcow2,size=60 \
    --os-variant rocky9 \
    --location /home/bravo/isos/Rocky-9.6-x86_64-minimal.iso \
    --network=default \
    --graphics none \
    --initrd-inject /home/bravo/vms/ascender-net.ks \
    --extra-args="inst.ks=file:/ascender-net.ks console=tty0 console=ttyS0,115200n8"
