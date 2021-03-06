# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-editors/cvs-repo/gentoo-x86/app-editors/znotes/znotes-0.4.5.ebuild,v 1.2 2012/08/30 16:28:42 kensington Exp $

EAPI=4
inherit qt4-r2

DESCRIPTION="Simple Notes"
HOMEPAGE="http://znotes.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="x11-libs/qt-core:4
	x11-libs/qt-gui:4"
RDEPEND="${DEPEND}"

DOCS="CHANGELOG THANKS"

PATCHES=( "${FILESDIR}/${P}-gcc-4.7.patch" )

src_configure() {
	lrelease znotes.pro || die "lrelease failed"
	qt4-r2_src_configure
}
