obj-m += pianofpgapwm.o
ccflags-y := -DDEBUG -g -std=gnu99 -Wno-declaration-after-statement

#KVERSION ?= $(shell uname -r)
#KERNEL_SRC ?= /lib/modules/$(KVERSION)/build
#PWD := $(shell pwd)

#.PHONY: all clean

all:
	$(MAKE) -C '$(KERNEL_SRC)' M='$(PWD)' modules

clean:
	$(MAKE) -C '$(KERNEL_SRC)' M='$(PWD)' clean
