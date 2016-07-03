aptitude update
aptitude install linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,')
aptitude install nvidia-kernel-dkms
mkdir /etc/X11/xorg.conf.d
echo -e 'Section "Device"\n\tIdentifier "My GPU"\n\tDriver "nvidia"\nEndSection' > /etc/X11/xorg.conf.d/20-nvidia.conf