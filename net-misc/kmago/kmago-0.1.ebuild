# Copyright 1999-2000 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Achim Gottinger <achim@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/kmago/Attic/kmago-0.1.ebuild,v 1.1 2000/09/28 02:40:56 achim Exp $

A=${P}.tgz
S=${WORKDIR}/${P}
DESCRIPTION="A Download Apllication for KDE2 based on wget"
SRC_URI="http://download.sourceforge.net/kmago/${A}"
HOMEPAGE="http://kmago.sourceforge.net"


src_compile() {

    cd ${S}
    try ./configure --prefix=/opt/kde --host=${CHOST}
    try make

}

src_install () {

    cd ${S}
    try make DESTDIR=${D} install
    dodoc AUTHORS COPYING ChangeLog NEWS README TODO
}

