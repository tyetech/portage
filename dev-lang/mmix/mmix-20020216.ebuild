# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-lang/cvs-repo/gentoo-x86/dev-lang/mmix/Attic/mmix-20020216.ebuild,v 1.10 2004/03/14 02:40:38 mr_bones_ Exp $

S=${WORKDIR}
DESCRIPTION="Donald Knuth's MMIX Assembler and Simulator"
SRC_URI="http://www-cs-faculty.stanford.edu/~knuth/programs/mmix.tar.gz"
HOMEPAGE="http://www-cs-faculty.stanford.edu/~knuth/mmix.html"

DEPEND="virtual/glibc
	>=dev-util/cweb-3.63
	virtual/ghostscript"
RDEPEND="$DEPEND"

SLOT="0"
LICENSE="mmix"
KEYWORDS="x86 sparc"

src_compile() {
	make basic CFLAGS="${CFLAGS}" || die
}

src_install () {
	dobin mmix mmixal
	dodoc README mmix.1
}
