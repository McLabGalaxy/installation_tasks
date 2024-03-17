sudo apt install msr-tools

sudo modprobe msr

sudo wrmsr -a 0xC0011022 0x510000

sudo wrmsr -a 0xC001102b 0x1808cc16

sudo wrmsr -a 0xC0011020 0

sudo wrmsr -a 0xC0011021 0x40

