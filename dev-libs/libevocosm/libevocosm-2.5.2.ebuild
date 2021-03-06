# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-libs/cvs-repo/gentoo-x86/dev-libs/libevocosm/libevocosm-2.5.2.ebuild,v 1.5 2005/12/18 23:42:48 halcy0n Exp $

DESCRIPTION="A C++ framework for evolutionary computing"
HOMEPAGE="http://www.coyotegulch.com/products/libevocosm/"
SRC_URI="http://www.coyotegulch.com/distfiles/${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 amd64 ~ppc"
IUSE=""
DEPEND="dev-libs/libcoyotl"

src_install() {
	make DESTDIR="${D}" install
	dodoc ChangeLog NEWS README
}
