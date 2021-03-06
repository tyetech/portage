# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/qterm/qterm-0.5.12.ebuild,v 1.7 2012/08/21 01:14:41 naota Exp $

EAPI=3
inherit cmake-utils eutils

DESCRIPTION="A BBS client for Linux"
HOMEPAGE="http://www.qterm.org/"
SRC_URI="mirror://sourceforge/qterm/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc x86"
IUSE=""

RDEPEND=">=x11-libs/qt-gui-4.5:4[qt3support]
	dev-libs/openssl"
DEPEND="${RDEPEND}
	kde-base/kdelibs
	x11-libs/qt-assistant:4
	x11-libs/qt-webkit:4"

src_prepare() {
	epatch "${FILESDIR}"/"${PN}"-0.5.11-gentoo.patch \
			"${FILESDIR}"/${P}-qt4.patch \
			"${FILESDIR}"/${P}-glibc216.patch
}

src_install() {
	cmake-utils_src_install
	mv "${D}"/usr/bin/qterm "${D}"/usr/bin/QTerm || die
	dodoc README TODO
}
