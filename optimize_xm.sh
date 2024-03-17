# enable huge pages
echo 1280 | sudo tee /proc/sys/vm/nr_hugepages

# xmr
sudo bash -c "echo vm.nr_hugepages=1280 >> /etc/sysctl.conf"

sudo bash -c "echo fs.file-max = 2097152 >> /etc/sysctl.conf"

sudo sh ./scripts/randomx_boost.sh

sudo sh ./scripts/enable_1gb_pages.sh

