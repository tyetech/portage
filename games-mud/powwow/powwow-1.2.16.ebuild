# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-mud/cvs-repo/gentoo-x86/games-mud/powwow/powwow-1.2.16.ebuild,v 1.2 2012/01/21 16:30:19 phajdan.jr Exp $

EAPI=2
inherit autotools games

DESCRIPTION="PowWow Console MUD Client"
HOMEPAGE="http://hoopajoo.net/projects/powwow.html"
SRC_URI="http://hoopajoo.net/static/projects/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc x86"
IUSE=""

DEPEND="sys-libs/ncurses"

src_prepare() {
	# note that that the extra, seemingly-redundant files installed are
	# actually used by in-game help commands
	sed -i \
		-e "s/pkgdata_DATA = powwow.doc/pkgdata_DATA = /" \
		Makefile.am || die
	eautoreconf
}

src_configure() {
	egamesconf \
		--disable-dependency-tracking \
		--includedir=/usr/include
}

src_install () {
	emake DESTDIR="${D}" install || die
	dodoc ChangeLog Config.demo Hacking NEWS powwow.{doc,help} README.* TODO
	prepgamesdirs
}
