# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/ifstat/Attic/ifstat-1.0.ebuild,v 1.5 2004/06/24 22:04:14 agriffis Exp $

IUSE="snmp"

DESCRIPTION="Network interface bandwidth usage, with support for snmp targets."
SRC_URI="http://gael.roualland.free.fr/ifstat/${P}.tar.gz"
HOMEPAGE="http://gael.roualland.free.fr/ifstat/"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86 sparc hppa ~amd64 ~ppc"

DEPEND="virtual/glibc
	snmp? ( >=net-analyzer/net-snmp-5.0 )"

src_compile() {
	econf || die
	make || die
}

src_install () {
	einstall || die
	dodoc COPYING HISTORY INSTALL README TODO VERSION
}
