# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-lang/cvs-repo/gentoo-x86/dev-lang/blassic/Attic/blassic-0.5.4.ebuild,v 1.5 2004/06/24 22:46:51 agriffis Exp $

DESCRIPTION="classic Basic interpreter"
HOMEPAGE="http://www.arrakis.es/~ninsesabe/blassic/index.html"
SRC_URI="http://www.arrakis.es/~ninsesabe/blassic/${P}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 ppc hppa"
IUSE=""

DEPEND="sys-libs/ncurses"

src_install() {
	einstall || die
}
