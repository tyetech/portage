# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-util/cvs-repo/gentoo-x86/dev-util/pkgconfig/Attic/pkgconfig-0.14.0.ebuild,v 1.8 2003/03/16 10:00:30 tuxus Exp $

S=${WORKDIR}/${P}
DESCRIPTION="Package Config system that manages compile/link flags for libraries"
SRC_URI="http://www.freedesktop.org/software/pkgconfig/releases/${P}.tar.gz"
HOMEPAGE="http://www.freedesktop.org/software/pkgconfig/"
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86 ~ppc sparc alpha mips"

DEPEND="virtual/glibc"
RDEPEND=""

src_compile() {
	econf || die
	emake || die
}

src_install () {
	einstall || die

	dodoc AUTHORS COPYING ChangeLog NEWS README 
}
