# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emulation/cvs-repo/gentoo-x86/app-emulation/qtemu/qtemu-1.0.5.ebuild,v 1.4 2012/10/09 21:18:56 cardoe Exp $

EAPI="2"

inherit eutils qt4-r2 cmake-utils

DESCRIPTION="A graphical user interface for QEMU written in Qt4."
HOMEPAGE="http://qtemu.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.bz2"

LICENSE="GPL-2 LGPL-2.1 CCPL-Attribution-3.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="x11-libs/qt-gui:4"
RDEPEND="${DEPEND}
	app-emulation/qemu"

DOCS="ChangeLog README"
PATCHES=(
	"${FILESDIR}/${PV}-help_and_translation_paths.patch"
)

src_install() {
	cmake-utils_src_install
	doicon "${S}/images/${PN}.ico"
	make_desktop_entry "qtemu" "QtEmu" "${PN}.ico" "Qt;Utility;Emulator"
}
