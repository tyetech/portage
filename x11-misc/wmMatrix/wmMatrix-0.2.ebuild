# Copyright (c) Vitaly Kushneriuk
# Distributed under the terms of the GNU General Public License, v2.
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/wmMatrix/Attic/wmMatrix-0.2.ebuild,v 1.5 2002/08/14 23:44:15 murphy Exp $

S=${WORKDIR}/${P}

DESCRIPTION="WMaker DockApp: Slightly modified version of Jamie Zawinski's xmatrix screenhack."
SRC_URI="http://nis-www.lanl.gov/~mgh/WindowMaker/${P}.tar.gz"
HOMEPAGE="http://nis-www.lanl.gov/~mgh/WindowMaker/DockApps.shtml"
DEPEND="virtual/glibc x11-base/xfree"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 sparc sparc64"

src_compile() {
	# this version is distributed with compiled binaries!
	make clean
	emake || die
}

src_install () {
	dobin wmMatrix
}
