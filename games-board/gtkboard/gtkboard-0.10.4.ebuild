# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-board/cvs-repo/gentoo-x86/games-board/gtkboard/Attic/gtkboard-0.10.4.ebuild,v 1.1 2003/09/10 17:46:27 vapier Exp $

inherit games

DESCRIPTION="Board games system"
HOMEPAGE="http://gtkboard.sf.net/"
SRC_URI="mirror://sourceforge/gtkboard/${P}.tar.gz"
LICENSE="GPL-2"
KEYWORDS="x86"
SLOT="0"
IUSE=""

DEPEND=">=x11-libs/gtk+-2"

src_install() {
	egamesinstall || die

	dodoc AUTHORS ChangeLog TODO
	dohtml doc/index.html
	prepgamesdirs
}
