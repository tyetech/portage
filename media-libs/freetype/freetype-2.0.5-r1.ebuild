# Copyright 1999-2000 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/freetype/Attic/freetype-2.0.5-r1.ebuild,v 1.4 2002/07/11 06:30:38 drobbins Exp $


S=${WORKDIR}/${P}
DESCRIPTION="TTF-Library"
SRC_URI="http://download.sourceforge.net/freetype/${P}.tar.bz2"
HOMEPAGE="http://www.freetype.org/"

SLOT="2"

DEPEND="virtual/glibc"

src_unpack() {
	unpack ${A}
	cd ${S}
	patch -p1 < ${FILESDIR}/freetype-2-hinting.patch
}

src_compile() {
	make CFG="--host=${CHOST} --prefix=/usr" || die
	emake || die
}

src_install() {
	make prefix=${D}/usr install || die

	dodoc ChangeLog README 
	dodoc docs/{BUILD,CHANGES,*.txt,PATENTS,readme.vms,todo}
}
