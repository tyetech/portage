# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/xdaliclock/Attic/xdaliclock-2.20.ebuild,v 1.1 2003/09/08 10:44:19 msterret Exp $

S=${WORKDIR}/${P}/X11
DESCRIPTION=" Dali Clock is a digital clock. When a digit changes, it melts into its new shape."
HOMEPAGE="http://www.jwz.org/xdaliclock/"
SRC_URI="http://www.jwz.org/${PN}/${P}.tar.gz"

KEYWORDS="~x86"
LICENSE="BSD"
SLOT="0"
IUSE=""

DEPEND="virtual/x11"

src_install() {
	dodir /usr/bin
	dodir /usr/share/man/man1
	einstall || die

	dodoc ../README
}
