# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-firewall/cvs-repo/gentoo-x86/net-firewall/firestorm/Attic/firestorm-0.5.4.ebuild,v 1.2 2004/04/16 20:14:26 randy Exp $

S=${WORKDIR}/${P}
DESCRIPTION="Network IDS"
SRC_URI="http://www.scaramanga.co.uk/firestorm/v${PV}/${P}.tar.gz"
HOMEPAGE="http://www.scaramanga.co.uk/firestorm/"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86 s390"

DEPEND="virtual/glibc"

src_compile() {
	econf || die
	emake || die
}

src_install () {
	make DESTDIR=${D} install || die
	dodoc AUTHORS COPYING CREDITS ChangeLog HACKING INSTALL NEWS README
}
