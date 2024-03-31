## How to Install KVM on Ubuntu 22.04 Step-by-Step

sudo apt update
egrep -c '(vmx|svm)' /proc/cpuinfo
kvm-ok
sudo apt install -y cpu-checker

### Install KVM on Ubuntu 22.04
sudo apt install -y qemu-kvm virt-manager libvirt-daemon-system virtinst libvirt-clients bridge-utils

Let us break down the packages that we are installing:

    qemu-kvm  – An opensource emulator and virtualization package that provides hardware emulation.
    virt-manager – A Qt-based graphical interface for managing virtual machines via the libvirt daemon.
    libvirt-daemon-system – A package that provides configuration files required to run the libvirt daemon.
    virtinst – A  set of command-line utilities for provisioning and modifying virtual machines.
    libvirt-clients – A set of client-side libraries and APIs for managing and controlling virtual machines & hypervisors from the command line.
    bridge-utils – A set of tools for creating and managing bridge devices.


### Start and Enable Virtualization Daemon
sudo systemctl enable --now libvirtd
sudo systemctl start libvirtd
sudo systemctl status libvirtd

$ sudo usermod -aG kvm $USER
$ sudo usermod -aG libvirt $USER

### 5) Create Network Bridge (br0)

sudo vi /etc/netplan/01-netcfg.yaml
network:
  ethernets:
    enp0s3:
      dhcp4: false
      dhcp6: false
  # add configuration for bridge interface
  bridges:
    br0:
      interfaces: [enp0s3]
      dhcp4: false
      addresses: [192.168.1.162/24]
      macaddress: 08:00:27:4b:1d:45
      routes:
        - to: default
          via: 192.168.1.1
          metric: 100
      nameservers:
        addresses: [4.2.2.2]
      parameters:
        stp: false
      dhcp6: false
  version: 2

  To apply above change, run ‘netplan apply’

$ sudo netplan apply

Verify the network bridge ‘br0’, run below ip command

$ ip add show
