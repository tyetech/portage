# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-sports/cvs-repo/gentoo-x86/games-sports/ski/Attic/ski-6.3.ebuild,v 1.1 2004/01/04 20:53:02 mr_bones_ Exp $

inherit games

DESCRIPTION="A simple text-mode skiing game"
HOMEPAGE="http://www.catb.org/~esr/ski/"
SRC_URI="http://www.catb.org/~esr/ski/${P}.tar.gz"

KEYWORDS="x86"
LICENSE="GPL-2"
SLOT="0"
IUSE=""

DEPEND="dev-lang/python"

src_install() {
	dogamesbin ski || die "dogamesbin failed"
	doman ski.6    || die "doman failed"
	dodoc README   || die "dodoc failed"
	prepgamesdirs
}
