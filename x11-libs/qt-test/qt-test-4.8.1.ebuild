# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-libs/cvs-repo/gentoo-x86/x11-libs/qt-test/qt-test-4.8.1.ebuild,v 1.9 2012/07/08 18:03:50 armin76 Exp $

EAPI=4

inherit qt4-build

DESCRIPTION="The testing framework module for the Qt toolkit"
SLOT="4"
KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ~ppc64 sparc x86 ~amd64-fbsd ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~x64-solaris ~x86-solaris"
IUSE=""

DEPEND="
	~x11-libs/qt-core-${PV}[aqua=,c++0x=,debug=,qpa=]
"
RDEPEND="${DEPEND}"

pkg_setup() {
	QT4_TARGET_DIRECTORIES="
		src/testlib"

	QT4_EXTRACT_DIRECTORIES="${QT4_TARGET_DIRECTORIES}
		include/QtTest
		include/QtCore
		src/corelib"

	qt4-build_pkg_setup
}

src_configure() {
	myconf+="
		-no-xkb -no-fontconfig -no-xrender -no-xrandr -no-xfixes -no-xcursor
		-no-xinerama -no-xshape -no-sm -no-opengl
		-no-nas-sound -no-dbus -no-cups -no-nis -no-gif -no-libpng
		-no-libmng -no-libjpeg -no-openssl -system-zlib -no-webkit -no-phonon
		-no-qt3support -no-xmlpatterns -no-freetype -no-libtiff
		-no-accessibility -no-fontconfig -no-glib -no-svg"

	qt4-build_src_configure
}
