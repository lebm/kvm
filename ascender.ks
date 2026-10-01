lang en_US
keyboard --xlayouts='us'
timezone America/Sao_Paulo --utc
rootpw $6$dE.hd0vQn6GB01KY$rx6CgrQ75L7jirwspj6zAbUpKJUYNfEhgyUs9WmGiJEE3UuRM9C/50Mb9PoRsN0Jjiwr.80yUJVL45H1kLc6l1 --iscrypted
user --groups=wheel --name=bravo --password=$6$5j.mJYClpD3ytwcp$bHAZ8MZQc1BxZqwxnn1YijFoPI2AbrmxQB3RIaXBs7E5e38udCiKA/7IqMU2rpT8Ii3mSi/jOcpqXyP2.VFjm. --iscrypted --gecos="Luis Bravo"
reboot
text
cdrom
bootloader --append="rhgb crashkernel=1G-4G:192M,4G-64G:256M,64G-:512M"
zerombr
clearpart --all --initlabel
autopart --nohome
network --bootproto=dhcp
firstboot --enable
selinux --enforcing
firewall --enabled --http --ssh
%packages
@^minimal-environment
kexec-tools
tmux
%end
