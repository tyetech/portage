# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-sci/cvs-repo/gentoo-x86/app-sci/libgdgeda/Attic/libgdgeda-2.0.15.ebuild,v 1.5 2004/06/04 23:16:27 dholm Exp $

HOMEPAGE="http://www.geda.seul.org"
DESCRIPTION="libgdgeda - a PNG creation library for gEDA"
SRC_URI="http://www.geda.seul.org/dist/${P}.tar.gz"

IUSE=""
LICENSE="GPL-2"
KEYWORDS="~x86 ~ppc"
SLOT="0"

DEPEND=">=media-libs/libpng-1.2.1
	>=sys-libs/zlib-1.1.4
	virtual/x11"

src_compile() {

	econf || die
	emake || die

}

src_install () {

	einstall || die
	dodoc COPYING README.1ST

}
