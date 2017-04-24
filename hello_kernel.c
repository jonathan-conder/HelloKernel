/* Copyright (c) 2000-2017 Synology Inc. All rights reserved. */

#include <linux/module.h>
#include <linux/kernel.h>

int init_module(void) {
	printk(KERN_INFO "Synology HelloKernel package is installed.\n");
	return 0;
}

void cleanup_module(void) {
	printk(KERN_INFO "Synology HelloKernel package has been removed.\n");
}
