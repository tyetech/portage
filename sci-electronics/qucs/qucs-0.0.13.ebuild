# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-electronics/cvs-repo/gentoo-x86/sci-electronics/qucs/Attic/qucs-0.0.13.ebuild,v 1.3 2008/01/02 04:24:46 mr_bones_ Exp $

EAPI=1

inherit eutils

DESCRIPTION="Quite Universal Circuit Simulator is a Qt based circuit simulator"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"
HOMEPAGE="http://qucs.sourceforge.net/"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="debug"

DEPEND="x11-libs/qt:3"
RDEPEND="x11-libs/qt:3"

src_compile() {
	myconf="--with-x $(use_enable debug)"

	econf ${myconf} || die "econf failed."
	emake || die "emake failed."
}

src_install() {
	make install DESTDIR="${D}" || die "make install failed."

	dodir /usr/share/pixmaps/
	cp qucs/bitmaps/big.qucs.xpm "${D}/usr/share/pixmaps/qucs.xpm"
	make_desktop_entry qucs Qucs qucs "Qt;Science;Electronics"
}
