# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-misc/cvs-repo/gentoo-x86/games-misc/jugglemaster/Attic/jugglemaster-0.3.ebuild,v 1.1 2004/03/27 02:15:04 dholm Exp $

DESCRIPTION="A siteswap animator"
SRC_URI="http://icculus.org/${PN}/download/${P}.tar.bz2"
HOMEPAGE="http://icculus.org/jugglemaster/"
LICENSE="GPL-2"
DEPEND="x11-libs/wxGTK"
IUSE="wxwindows"
KEYWORDS="~ppc"
SLOT="0"

src_compile() {
	cd src/jmdlx
	emake || die "build failed"
}

src_install () {
	dobin src/jmdlx/jmdlx
	dodoc ChangeLog COPYING LICENSE README TODO
}
