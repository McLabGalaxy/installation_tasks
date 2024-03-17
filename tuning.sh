sudo apt update
sudo apt install tuned tuned-utils tuned-utils-systemtap

sudo tuned-adm profile throughput-performance

sudo tuned-adm active

#tuned-adm list
#tuned-adm off
