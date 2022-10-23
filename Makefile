obj-m += hid-sony.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

install:
	cp hid-sony.ko /lib/modules/$(shell uname -r)/kernel/drivers/hid/


VER:=$(shell uname -r | cut -c1-4)
download:
	wget https://raw.githubusercontent.com/torvalds/linux/v$(VER)/drivers/hid/hid-ids.h
	wget https://raw.githubusercontent.com/torvalds/linux/v$(VER)/drivers/hid/hid-sony.c
