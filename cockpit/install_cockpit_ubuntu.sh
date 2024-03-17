## install Cockpit on Ubuntu 22.04 for better server management 
sudo apt-get install cockpit -y

sudo systemctl enable --now cockpit.socket

# give USER is access to perform admin operation in cockpit
sudo usermod -aG sudo $USER

# add container support
sudo apt-get install podman cockpit-podman -y

## EXTENSIONS
# Start and enable Podman with:
sudo systemctl enable --now podman

# KVM
sudo apt install cockpit-machines

# FILE SHARING
https://github.com/45Drives/cockpit-file-sharing
# direct from deb
curl -LO https://github.com/45Drives/cockpit-file-sharing/releases/download/v3.2.9/cockpit-file-sharing_3.2.9-2focal_all.deb
sudo apt install ./cockpit-file-sharing_3.2.9-2focal_all.deb


# firewall
sudo ufw allow 9090


