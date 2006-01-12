# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-board/cvs-repo/gentoo-x86/games-board/qgo/Attic/qgo-1.0.4.ebuild,v 1.1 2006/01/12 16:24:12 mr_bones_ Exp $

inherit kde-functions eutils

DESCRIPTION="A c++/qt go client and sgf editor"
HOMEPAGE="http://qgo.sourceforge.net/"
SRC_URI="mirror://sourceforge/qgo/${P}-r1.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ppc x86"
IUSE=""

need-qt 3

src_install() {
	make DESTDIR="${D}" install || die "make install failed"
	dodoc AUTHORS ChangeLog NEWS README TODO
}
