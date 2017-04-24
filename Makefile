# Copyright (c) 2000-2017 Synology Inc. All rights reserved.

HELLO_KERNEL= hello_kernel.ko

all: $(HELLO_KERNEL)

obj-m := hello_kernel.o

$(HELLO_KERNEL):
	make -C $(KSRC) M=$(PWD) modules

install: $(HELLO_KERNEL)
	mkdir -p $(DESTDIR)/hello_kernel/
	install $< $(DESTDIR)/hello_kernel/

clean:
	rm -rf *.o $(HELLO_KERNEL) *.cmd
