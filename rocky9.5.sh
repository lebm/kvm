sudo virt-install \
    --name rocky95 --memory 2048 --vcpus 1 \
    --disk path=/home/bravo/virt-images/rocky95.qcow2,format=qcow2,size=20 \
    --os-variant rocky9 --location /home/bravo/isos/Rocky-9.5-x86_64-boot.iso \
    --network=default \
    --graphics none --extra-args='console=ttyS0'
