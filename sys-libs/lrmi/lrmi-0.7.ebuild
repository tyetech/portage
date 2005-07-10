# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-libs/cvs-repo/gentoo-x86/sys-libs/lrmi/Attic/lrmi-0.7.ebuild,v 1.7 2005/07/10 00:59:33 swegener Exp $

IUSE=""
DESCRIPTION="LRMI is a library for calling real mode BIOS routines under Linux."
HOMEPAGE="http://www.sourceforge.net/projects/lrmi/"
KEYWORDS="x86"
SLOT="0"
LICENSE="MIT"
DEPEND="virtual/libc"
RDEPEND=""
SRC_URI="mirror://sourceforge/lrmi/${P}.tar.gz"

src_compile() {
	emake CFLAGS="${CFLAGS}" || die
}

src_install () {
	dobin vbetest
	insinto /usr/lib
	doins liblrmi.so
	insinto /usr/include
	doins lrmi.h vbe.h
}
