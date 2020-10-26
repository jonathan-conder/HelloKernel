#!/bin/bash
# Copyright (c) 2000-2017 Synology Inc. All rights reserved.

source /pkgscripts/include/pkg_util.sh

package="HelloKernel"
version="1.0.0-0001"
displayname="HelloKernel"
maintainer="Synology Inc."
arch="$(pkg_get_platform)"
description="This is a synology kernel module example package."
[ "$(caller)" != "0 NULL" ] && return 0
pkg_dump_info
