# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-gfx/cvs-repo/gentoo-x86/media-gfx/jpegoptim/Attic/jpegoptim-1.2.2.ebuild,v 1.10 2007/11/07 14:31:09 hanno Exp $

DESCRIPTION="JPEG file optimiser"
HOMEPAGE="http://www.kokkonen.net/tjko/projects.html"
SRC_URI="http://www.kokkonen.net/tjko/src/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~ppc x86"

IUSE=""
DEPEND="media-libs/jpeg"

src_compile() {
	./configure \
		--host=${CHOST} \
		--prefix=/usr \
		--infodir=/usr/share/info \
		--mandir=/usr/share/man || die "./configure failed"

	emake || die
}

src_install() {
	make INSTALL_ROOT="${D}" install || die
	dodoc COPYRIGHT README
}
