# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/p0f/Attic/p0f-2.0.2.ebuild,v 1.1 2003/10/03 23:57:42 pappy Exp $

DESCRIPTION="p0f performs passive OS detection based on SYN packets."
SRC_URI="http://lcamtuf.coredump.cx/p0f.tgz"
HOMEPAGE="http://lcamtuf.coredump.cx/p0f.shtml"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="~x86"

DEPEND="net-libs/libpcap"

src_compile() {
	cd ${WORKDIR}/p0f
	make || die
}

src_install () {
	cd ${WORKDIR}/p0f
	make DESTDIR=${D} install || die
}
