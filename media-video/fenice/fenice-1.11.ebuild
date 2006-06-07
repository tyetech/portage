# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-video/cvs-repo/gentoo-x86/media-video/fenice/Attic/fenice-1.11.ebuild,v 1.2 2006/06/07 20:43:39 lu_zero Exp $

DESCRIPTION="Experimental rtsp streaming server"
HOMEPAGE="http://streaming.polito.it/server"
SRC_URI="http://streaming.polito.it/files/${P}.tar.bz2"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

RDEPEND=""
DEPEND="virtual/ghostscript"

src_unpack() {
	unpack ${A}
	sed -i -e "s:PACKAGE_NAME/avroot:PACKAGE_NAME/avroot/:g" ${S}/configure
}
src_compile() {
	econf --disable-fhs23 || die "econf failed"
	emake || die "emake failed"
}

src_install() {
	dodir /var/log
	make DESTDIR=${D} install || die "make install failed"
}
