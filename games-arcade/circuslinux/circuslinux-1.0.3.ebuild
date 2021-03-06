# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-arcade/cvs-repo/gentoo-x86/games-arcade/circuslinux/circuslinux-1.0.3.ebuild,v 1.18 2012/09/05 07:21:02 mr_bones_ Exp $

EAPI=2
inherit eutils games

DESCRIPTION="clone of the Atari 2600 game \"Circus Atari\""
SRC_URI="ftp://ftp.sonic.net/pub/users/nbs/unix/x/circus-linux/${P}.tar.gz"
HOMEPAGE="http://www.newbreedsoftware.com/circus-linux/"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 ppc sparc x86"
IUSE=""

DEPEND="media-libs/libsdl
	media-libs/sdl-image[png]
	media-libs/sdl-mixer[mod]"

src_prepare() {
	sed -i \
		-e "/^install-data-am/d" \
		Makefile.in \
		|| die
	sed -i \
		-e 's/\$(pkgdatadir)/$(DESTDIR)&/' \
		data/Makefile.in \
		|| die
}

src_install () {
	emake DESTDIR="${D}" install || die
	newicon data/images/${PN}-icon.xpm ${PN}.xpm
	make_desktop_entry ${PN} "Circus Linux!"
	dodoc *.txt
	prepgamesdirs
}
