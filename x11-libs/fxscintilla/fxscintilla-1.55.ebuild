# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-libs/cvs-repo/gentoo-x86/x11-libs/fxscintilla/Attic/fxscintilla-1.55.ebuild,v 1.6 2004/06/24 22:00:51 agriffis Exp $

DESCRIPTION="A free source code editing component for the FOX-Toolkit"
HOMEPAGE="http://www.nongnu.org/fxscintilla"
SRC_URI="http://savannah.nongnu.org/download/fxscintilla/${P}.tar.gz"

SLOT="0"
KEYWORDS="~x86 ~sparc ~ppc"
LICENSE="GPL-2"
IUSE=""

DEPEND="x11-libs/fox"

src_install () {
	make DESTDIR="${D}" install || die "make install failed"
	dodoc README INSTALL
}
