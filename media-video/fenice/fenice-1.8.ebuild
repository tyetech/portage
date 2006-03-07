# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-video/cvs-repo/gentoo-x86/media-video/fenice/Attic/fenice-1.8.ebuild,v 1.4 2006/03/07 16:37:59 flameeyes Exp $

DESCRIPTION="Experimental rtsp streaming server"
HOMEPAGE="http://streaming.polito.it/fenice.shtml"
SRC_URI="http://streaming.polito.it/files/${P}.tar.bz2"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~ppc"
IUSE=""

RDEPEND=""
DEPEND="virtual/ghostscript"

src_compile() {
	econf --disable-fhs23 || die "econf failed"
	emake || die "emake failed"
}

src_install() {
	make DESTDIR=${D} install || die "make install failed"
}
