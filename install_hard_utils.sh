sudo dmidecode --type processor

sudo apt install cpuid -y

sudo apt install hardinfo -y

sudo apt install hwinfo -y

sudo apt install inxi -y

#inxi -C
#lscpu
#hwinfo --cpu

# hardinfo 
hwinfo --cpu --shor

# sudo lshw -C CPU

cat /proc/meminfo

cat /proc/cpuinfo

# find ram speed

sudo dmidecode --type 17
lshw -short -C memory

sudo dmidecode -t memory
