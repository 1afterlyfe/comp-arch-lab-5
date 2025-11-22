obj-m += hello1.o
obj-m += hello2.o

ccflags-y += -I$(PWD)/inc

all:
	$(MAKE) -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	$(MAKE) -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
