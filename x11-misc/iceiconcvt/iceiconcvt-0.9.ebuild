# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/iceiconcvt/Attic/iceiconcvt-0.9.ebuild,v 1.1 2003/03/17 09:34:36 phosphan Exp $

DESCRIPTION="IceWM icons' converter"
SRC_URI="http://tsa.dyndns.org/mirror/xvadim/${P}.tar.bz2"
HOMEPAGE="http://tsa.dyndns.org/mirror/xvadim/"
LICENSE="GPL-2"
KEYWORDS="~x86"
RESTRICT="nostrip"

DEPEND="PyQt"

SLOT="0"

src_compile () {
	einfo "No compilation necessary"
}

src_install () {
	exeinto /usr/bin
	doexe iceiconcvt.py
	dodoc ChangeLog BUGS README.iceiconcvt TODO
}
