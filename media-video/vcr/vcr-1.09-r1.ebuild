# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-video/cvs-repo/gentoo-x86/media-video/vcr/Attic/vcr-1.09-r1.ebuild,v 1.4 2003/02/21 18:11:22 mholzer Exp $

S=${WORKDIR}/${P}
DESCRIPTION="VCR - Linux Console VCR"
SRC_URI="http://www.stack.nl/~brama/${PN}/src/${P}.tar.gz
	mirror://gentoo/${P}-gentoo.diff.bz2"
HOMEPAGE="http://www.stack.nl/~brama/vcr/"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86"

DEPEND="=media-video/avifile-0.7.15*"

src_unpack () {
	unpack ${P}.tar.gz
	( bzcat ${DISTDIR}/${P}-gentoo.diff.bz2 | patch -p0 ) || die
}

src_compile () {
	local myconf
	myconf="--enable-avifile-0_6"
	econf ${myconf} || die "econf died"
	emake || die "emake died"
}

src_install () {

	einstall || die "einstall died"
	dodoc AUTHORS COPYING ChangeLog NEWS README
}
