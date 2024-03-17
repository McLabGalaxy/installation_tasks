cat /proc/sys/vm/swappiness

sudo sysctl -w vm.swappiness=1

sudo nano /etc/sysctl.conf
vm.swappiness=40
