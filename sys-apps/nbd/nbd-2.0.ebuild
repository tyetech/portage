# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-apps/cvs-repo/gentoo-x86/sys-apps/nbd/Attic/nbd-2.0.ebuild,v 1.1 2003/04/20 22:54:52 agenkin Exp $

DESCRIPTION="Userland client/server for kernel network block device"
HOMEPAGE="http://nbd.sf.net"
LICENSE="GPL-2"

DEPEND="virtual/glibc"

KEYWORDS="~x86 -ppc"
SLOT="0"

S=${WORKDIR}/${PN}
SRC_URI="mirror://sourceforge/nbd/${P}.tar.gz"

src_compile() {
	econf
	make || die
	make -C gznbd || die
}

src_install() {
	dobin nbd-client nbd-server gznbd/gznbd
	dodoc README
}
