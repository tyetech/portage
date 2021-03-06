# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-board/cvs-repo/gentoo-x86/games-board/simsu/simsu-1.2.2.ebuild,v 1.3 2012/04/25 06:41:42 jdhore Exp $

EAPI=2
inherit eutils qt4-r2 games

DESCRIPTION="A basic sudoku game"
HOMEPAGE="http://gottcode.org/simsu/"
SRC_URI="http://gottcode.org/${PN}/${P}-src.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="x11-libs/qt-gui:4"

src_configure() {
	eqmake4
}

src_install() {
	dogamesbin ${PN} || die
	dodoc ChangeLog
	doicon icons/hicolor/scalable/apps/${PN}.svg
	domenu icons/${PN}.desktop
	prepgamesdirs
}
