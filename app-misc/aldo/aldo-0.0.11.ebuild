# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-misc/cvs-repo/gentoo-x86/app-misc/aldo/Attic/aldo-0.0.11.ebuild,v 1.6 2004/06/28 03:23:52 vapier Exp $

DESCRIPTION="a morse tutor"
HOMEPAGE="http://aldo.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"
IUSE=""

DEPEND="virtual/libc"

src_compile() {
	make libs || die
	make aldo || die
}

src_install() {
	dobin aldo || die
	dodoc README* TODO VERSION AUTHORS ChangeLog
}
