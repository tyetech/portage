# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-board/cvs-repo/gentoo-x86/games-board/kcheckers/Attic/kcheckers-0.5.ebuild,v 1.1 2004/12/07 22:26:19 mr_bones_ Exp $

inherit games

DESCRIPTION="Qt version of the classic boardgame checkers."
HOMEPAGE="http://kcheckers.osdn.org.ua/"
SRC_URI="http://kcheckers.osdn.org.ua/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"
IUSE=""

DEPEND="virtual/x11
	>=x11-libs/qt-3.3.2"

src_compile() {
	qmake
	emake || die "emake failed"
}

src_install() {
	dogamesbin kcheckers || die "dogamesbin failed"
	dodoc AUTHORS README TODO ChangeLog
	prepgamesdirs
}
