# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-sports/cvs-repo/gentoo-x86/games-sports/foosball/Attic/foosball-0.92.ebuild,v 1.4 2004/05/04 02:23:03 mr_bones_ Exp $

inherit games

DESCRIPTION="foosball game that uses SDL"
HOMEPAGE="http://freshmeat.net/projects/foosball/"
SRC_URI="http://www.autismuk.freeserve.co.uk/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"
IUSE=""

DEPEND="media-libs/libsdl"

src_install() {
	make DESTDIR="${D}" install || die "make install failed"
	dodoc AUTHORS ChangeLog README TODO
	prepgamesdirs
}
