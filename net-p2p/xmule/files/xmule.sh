#!/bin/sh
# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-p2p/cvs-repo/gentoo-x86/net-p2p/xmule/files/Attic/xmule.sh,v 1.1 2004/06/28 16:20:57 squinky86 Exp $

if [ ! -e ~/.xMule ]; then
	echo "Creating ~/.xMule..."
	mkdir ~/.xMule
	echo "Copying required files to ~/.xMule..."
	mkdir ~/.xMule/resource
	cp /usr/share/xmule/*.pm ~/.xMule/resource/
	echo "Starting xMule..."
	xmule-bin
else
	xmule-bin
fi
