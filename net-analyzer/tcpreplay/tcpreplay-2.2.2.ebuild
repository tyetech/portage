# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/tcpreplay/Attic/tcpreplay-2.2.2.ebuild,v 1.1 2004/06/23 00:09:03 swegener Exp $

DESCRIPTION="replay saved tcpdump or snoop files at arbitrary speeds"
HOMEPAGE="http://tcpreplay.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"
RESTRICT="nomirror"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86"
IUSE="debug"

DEPEND=">=net-libs/libnet-1.1.1
	net-libs/libpcap
	net-analyzer/tcpdump"

src_compile() {
	econf \
		$(use_with debug) \
		|| die "econf failed"
	emake CFLAGS="${CFLAGS}" || die "emake failed"
}

src_install() {
	make \
		prefix=${D}/usr \
		MAN8DIR=${D}/usr/share/man/man8 \
		MAN1DIR=${D}/usr/share/man/man1 \
		install \
		|| die "install failed"
	dodoc Docs/*
}
