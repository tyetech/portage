# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-board/cvs-repo/gentoo-x86/games-board/gnuchess/Attic/gnuchess-5.06.ebuild,v 1.5 2004/07/14 14:29:06 agriffis Exp $

inherit games

DESCRIPTION="Console based chess interface"
SRC_URI="mirror://gnu/chess/${P}.tar.gz"
HOMEPAGE="http://www.gnu.org/software/chess/chess.html"

KEYWORDS="x86 ppc sparc"
IUSE=""
LICENSE="GPL-2"
SLOT="0"

src_install () {
	egamesinstall || die
	dodoc AUTHORS ChangeLog INSTALL NEWS TODO doc/README || die "dodoc failed"
	prepgamesdirs
}
