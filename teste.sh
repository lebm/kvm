sudo virt-install \
    --name testevm --memory 2048 --vcpus 1 \
    --disk path=/home/bravo/virt-images/teste.qcow2,format=qcow2,size=20 \
    --os-variant almalinux9 --location /home/bravo/isos/AlmaLinux-9-latest-x86_64-boot.iso \
    --network=default \
    --graphics none --extra-args='console=ttyS0'
