# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/scribus-scripting/Attic/scribus-scripting-0.4.ebuild,v 1.1 2003/03/01 14:16:48 hanno Exp $

S=${WORKDIR}/${P}
DESCRIPTION="Python-scripting plugin for Scribus"
HOMEPAGE="http://web2.altmuehlnet.de/fschmid"
SRC_URI="http://web2.altmuehlnet.de/fschmid/${P}.tar.gz"
IUSE=""
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~x86 ~ppc"
DEPEND="app-office/scribus"

src_compile() {
	econf || die
	emake CXXFLAGS="${CXXFLAGS} -I/usr/include/lcms" || die
}

src_install () {
	einstall destdir=${D} || die
	dodoc AUTHORS ChangeLog README TODO
}
