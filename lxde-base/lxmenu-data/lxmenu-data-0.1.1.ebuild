# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/lxde-base/cvs-repo/gentoo-x86/lxde-base/lxmenu-data/Attic/lxmenu-data-0.1.1.ebuild,v 1.4 2009/11/21 18:31:10 nixnut Exp $

DESCRIPTION="Provides files needed for LXDE application menus"
HOMEPAGE="http://lxde.sourceforge.net/"
SRC_URI="mirror://sourceforge/lxde/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc x86"
IUSE=""

RDEPEND=""
DEPEND="sys-devel/gettext
	>=dev-util/intltool-0.40.0
	dev-util/pkgconfig"

src_install() {
	make DESTDIR="${D}" install || die "make install failed"
	dodoc AUTHORS README || die "dodoc failed"
}
