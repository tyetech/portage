# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-board/cvs-repo/gentoo-x86/games-board/qgo/Attic/qgo-0.2.ebuild,v 1.2 2004/06/04 09:10:03 dholm Exp $

inherit kde-functions
need-qt 3

DESCRIPTION="A c++/qt go client and sgf editor"
HOMEPAGE="http://qgo.sourceforge.net/"
SRC_URI="mirror://sourceforge/qgo/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~ppc"
IUSE=""

src_install() {
	make DESTDIR="${D}" install || die "make install failed"
	dodoc qgo/README ChangeLog TODO
}
