# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-dicts/cvs-repo/gentoo-x86/app-dicts/ispell-pt/Attic/ispell-pt-20010720.ebuild,v 1.1 2002/12/03 07:15:39 seemant Exp $

S=${WORKDIR}"/portugues"
DESCRIPTION="A Portuguese dictionary for ispell"
SRC_URI="http://www.di.uminho.pt/~jj/pln/UMportugues.tgz"
HOMEPAGE="http://natura.di.uminho.pt/~jj/pln/pln.html"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86"

DEPEND="app-text/ispell"


src_compile() {
	make || die
}

src_install () {
	insinto /usr/lib/ispell
	doins portugues.aff portugues.hash

	dodoc README
}
