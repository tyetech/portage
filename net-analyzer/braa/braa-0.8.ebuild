# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/braa/Attic/braa-0.8.ebuild,v 1.3 2004/06/24 21:57:56 agriffis Exp $

DESCRIPTION="Quick and dirty mass SNMP scanner"

HOMEPAGE="http://s-tech.elsat.net.pl/braa/"
SRC_URI="http://s-tech.elsat.net.pl/braa/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~ppc"
IUSE=""

DEPEND="virtual/glibc"

src_compile() {
	emake || die "emake failed"
}

src_install() {
	dobin braa

	dodoc COPYING README VERSION
}
