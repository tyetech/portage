# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-wm/cvs-repo/gentoo-x86/x11-wm/treewm/Attic/treewm-0.4.4.ebuild,v 1.3 2004/04/27 18:53:37 pvdabeel Exp $

DESCRIPTION="WindowManager that arranges the windows in a tree not a list"
SRC_URI="mirror://sourceforge/treewm/${P}.tar.bz2"
HOMEPAGE="http://treewm.sourceforge.net/"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86 sparc ppc"

DEPEND="virtual/glibc
	virtual/x11
	sys-apps/chpax"



src_compile() {
	make PREFIX=/usr || die
}

src_install() {
	make PREFIX=${D}/usr install || die

	dodoc ChangeLog README AUTHORS default.cfg sample.cfg TODO README.tiling PROBLEMS
}
