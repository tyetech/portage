# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/qtagger/qtagger-1.0.1.ebuild,v 1.3 2010/10/10 09:51:12 phajdan.jr Exp $

EAPI=3

inherit cmake-utils

DESCRIPTION="Simple Qt4 ID3v2 tag editor"
HOMEPAGE="http://code.google.com/p/qtagger"
SRC_URI="http://${PN}.googlecode.com/files/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="media-libs/taglib
	x11-libs/qt-gui:4"
RDEPEND="${DEPEND}"

src_prepare() {
	# fix doc installation path
	sed -i "s/doc\/${PN}/doc\/${PF}/" CMakeLists.txt
}

src_configure() {
	mycmakeargs="${mycmakeargs}	-DCMAKE_NO_BUILTIN_CHRPATH:BOOL=ON"
	cmake-utils_src_configure
}
