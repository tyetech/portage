# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-board/cvs-repo/gentoo-x86/games-board/qgo/Attic/qgo-1.0.0.ebuild,v 1.1 2004/12/14 11:27:20 mr_bones_ Exp $

inherit kde-functions eutils
need-qt 3

DESCRIPTION="A c++/qt go client and sgf editor"
HOMEPAGE="http://qgo.sourceforge.net/"
SRC_URI="mirror://sourceforge/qgo/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 ppc ~amd64"
IUSE=""

src_install() {
	make DESTDIR="${D}" install || die "make install failed"
	rm -rf "${D}/usr/include"
	dodoc AUTHORS ChangeLog NEWS README TODO
}
