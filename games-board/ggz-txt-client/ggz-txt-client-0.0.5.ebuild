# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-board/cvs-repo/gentoo-x86/games-board/ggz-txt-client/Attic/ggz-txt-client-0.0.5.ebuild,v 1.5 2006/07/09 01:39:47 wormo Exp $

DESCRIPTION="The textbased client for GGZ Gaming Zone"
HOMEPAGE="http://ggz.sourceforge.net/"
SRC_URI="mirror://sourceforge/ggz/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 ppc"
IUSE=""

DEPEND="~dev-games/ggz-client-libs-0.0.5"

src_install() {
	make DESTDIR=${D} install || die
}
