#!/bin/sh
# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-p2p/cvs-repo/gentoo-x86/net-p2p/xmule/files/Attic/xmule.sh,v 1.2 2004/06/29 16:34:12 squinky86 Exp $

if [ ! -d ~/.xMule ]; then
        echo "Creating ~/.xMule..."
        mkdir ~/.xMule || exit 1
fi
if [ ! -d ~/.xMule/resource ]; then
        echo "Copying required files to ~/.xMule..."
        mkdir ~/.xMule/resource || exit 1
        cp /usr/share/xmule/*.pm ~/.xMule/resource/ || exit 1
        echo "Starting xMule..."
fi
exec xmule-bin
