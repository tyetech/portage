# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-p2p/cvs-repo/gentoo-x86/net-p2p/ed2k_hash/Attic/ed2k_hash-0.4.0.ebuild,v 1.6 2004/09/03 00:29:22 malc Exp $

DESCRIPTION="Tool for generating eDonkey2000 links"
HOMEPAGE="http://ed2k-tools.sourceforge.net/${PN}.shtml"
RESTRICT="nomirror"
SRC_URI="mirror://sourceforge/ed2k-tools/${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 ppc ~amd64"
IUSE=""
DEPEND="virtual/libc"

inherit eutils

src_unpack() {
	unpack ${P}.tar.gz
	epatch ${FILESDIR}/ed2k_64bit.patch
}

src_install() {
	make install DESTDIR=${D} || die

	dodoc AUTHORS COPYING INSTALL README TODO
}
