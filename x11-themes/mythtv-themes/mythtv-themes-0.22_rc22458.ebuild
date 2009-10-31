# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-themes/cvs-repo/gentoo-x86/x11-themes/mythtv-themes/Attic/mythtv-themes-0.22_rc22458.ebuild,v 1.1 2009/10/31 22:35:06 cardoe Exp $

EAPI=2
inherit qt4 mythtv

DESCRIPTION="A collection of themes for the MythTV project."
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

DEPEND="x11-libs/qt-core:4
	=media-tv/mythtv-${MY_PV}*"

src_configure() {
	sh ./configure --prefix=/usr || die "configure died"
}

src_compile() {
	eqmake4 myththemes.pro || die "qmake failed"
}

src_install() {
	einstall INSTALL_ROOT="${D}" || die "install failed"
}
