# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-libs/cvs-repo/gentoo-x86/x11-libs/nucleo/Attic/nucleo-0.1-r1.ebuild,v 1.3 2004/08/08 00:52:56 slarti Exp $

IUSE=""

DATE="20040721"

DESCRIPTION="Nucleo is some library for metisse"
SRC_URI="http://insitu.lri.fr/~chapuis/software/metisse/${P}-${DATE}.tar.bz2"
HOMEPAGE="http://insitu.lri.fr/~chapuis/metisse"

DEPEND="virtual/x11
	virtual/opengl
	media-libs/freetype
	media-libs/libpng
	media-libs/jpeg"

SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="~x86 ~ppc"

src_compile() {
	econf || die "configure failed"
	emake || die "make failed"
}

src_install() {
	make DESTDIR=${D} install || die "make install failed"
	dodoc README ChangeLog AUTHORS NEWS
}
