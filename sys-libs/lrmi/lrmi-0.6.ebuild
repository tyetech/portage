# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-libs/cvs-repo/gentoo-x86/sys-libs/lrmi/Attic/lrmi-0.6.ebuild,v 1.2 2002/11/07 16:24:15 hanno Exp $

IUSE=""
DESCRIPTION="LRMI is a library for calling real mode BIOS routines under Linux."
HOMEPAGE="http://www.sourceforge.net/projects/lrmi/"
KEYWORDS="~x86"
SLOT="0"
LICENSE="MIT"
DEPEND="virtual/glibc"
RDEPEND=""
SRC_URI="mirror://sourceforge/lrmi/${P}.tar.gz"
S=${WORKDIR}/${P}

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
