# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-libs/cvs-repo/gentoo-x86/dev-libs/DFB++/Attic/DFB++-0.9.20.ebuild,v 1.3 2004/07/14 14:15:10 agriffis Exp $

DESCRIPTION="C++ bindings for DirectFB"
HOMEPAGE="http://www.directfb.org/dfb++.xml"
SRC_URI="http://directfb.org/download/DirectFB/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"
IUSE=""

DEPEND="~dev-libs/DirectFB-${PV}"

src_install() {
	make install DESTDIR=${D} || die
	dodoc AUTHORS ChangeLog NEWS README
}
