# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/x11-base/cvs-repo/gentoo-x86/x11-base/xfree/files/4.2.99/Attic/xfs.conf.d,v 1.1 2002/06/19 21:24:01 azarah Exp $

# Config file for /etc/init.d/xfs


# Port for xfs to listen on.  Default is set to "-1", meaning
# it will only listen on unix sockets, and not tcp ports.  If
# you however want it to listen on tcp, remember to comment
# "nolisten = tcp" in /etc/X11/fs/config.

XFS_PORT="-1"

