sudo virt-install \
    --name rhel95 --memory 2048 --vcpus 1 \
    --disk path=/home/bravo/virt-images/rhel95.qcow2,format=qcow2,size=20 \
    --os-variant rocky9 --location /home/bravo/isos/rhel-9.5-x86_64-dvd.iso \
    --network=default \
    --graphics none --extra-args='console=ttyS0'
