# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-irc/cvs-repo/gentoo-x86/net-irc/dccserver/Attic/dccserver-0.3.ebuild,v 1.5 2004/06/24 23:03:14 agriffis Exp $

DESCRIPTION="linux implementation of the mirc dccserver command"
SRC_URI="http://ftp.giga.or.at/pub/nih/dccserver/${P}.tar.gz"
LICENSE="BSD"
SLOT="0"
KEYWORDS="x86 ~ppc"
IUSE=""
HOMEPAGE="http://www.nih.at/dccserver/"

DEPEND="virtual/glibc"

src_compile() {
	econf || die "Configure failed"
	emake || die "make failed"
}

src_install() {
	einstall
	dodoc AUTHORS NEWS THANKS TODO
}
