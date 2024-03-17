# sudo bash -c "echo vm.nr_hugepages=1280 >> /etc/sysctl.conf"

sudo apt-get install msr-tools; sudo wrmsr -a 0x1a4 $((0b0110))

lsmod | grep msr

sudo modprobe msr

sudo wrmsr -a 0x1a4 6

echo 1250 | sudo tee /proc/sys/vm/nr_hugepages
