# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-plugins/cvs-repo/gentoo-x86/x11-plugins/wmbio/Attic/wmbio-1.01.ebuild,v 1.7 2004/08/23 19:36:44 s4t4n Exp $

IUSE=""
S=${WORKDIR}/wmbio/src
DESCRIPTION="a Window Maker applet that shows your biorhythm"
SRC_URI="http://wmbio.sourceforge.net/${P}.tar.gz"
HOMEPAGE="http://wmbio.sourceforge.net/"

DEPEND="virtual/x11"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86 ppc"

src_compile() {
	cp Makefile Makefile_
	sed -e 's:cc:cc ${CFLAGS}:' Makefile_ > Makefile

	emake || die
}

src_install ()
{
	dobin wmbio
	cd ..
	dodoc README INSTALL COPYING NEWS Changelog
}
