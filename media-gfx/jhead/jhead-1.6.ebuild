# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-gfx/cvs-repo/gentoo-x86/media-gfx/jhead/Attic/jhead-1.6.ebuild,v 1.10 2004/07/01 10:49:20 eradicator Exp $

S=${WORKDIR}/${PN}1.6
DESCRIPTION="a program for making thumbnails for websites."
SRC_URI="http://www.sentex.net/~mwandel/jhead/${P}.tar.gz"
HOMEPAGE="http://www.sentex.net/~mwandel/jhead/"

SLOT="0"
LICENSE="BSD | GPL-2"
KEYWORDS="x86 ~ppc ~sparc hppa"

DEPEND="virtual/libc"

src_compile() {

	cd ${S}
	emake || die
}

src_install () {

	dobin jhead
	dodoc readme.txt changes.txt
	dohtml usage.html
}
