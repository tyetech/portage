# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/tcptrack/Attic/tcptrack-1.2.0.ebuild,v 1.3 2008/03/31 18:00:43 cedk Exp $

inherit eutils

DESCRIPTION="Passive per-connection tcp bandwidth monitor"
HOMEPAGE="http://www.rhythm.cx/~steve/devel/tcptrack/"
SRC_URI="http://www.rhythm.cx/~steve/devel/tcptrack/release/${PV}/source/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc x86"
IUSE=""

DEPEND="net-libs/libpcap
	sys-libs/ncurses"

src_unpack() {
	unpack ${A}
	cd "${S}"
	epatch "${FILESDIR}"/${P}-string_h.patch
}

src_install() {
	einstall || die
	dodoc AUTHORS ChangeLog NEWS README TODO
}
