# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-board/cvs-repo/gentoo-x86/games-board/gnono/gnono-1.9.1.ebuild,v 1.5 2009/11/23 14:32:31 maekke Exp $

EAPI=2
inherit autotools eutils gnome2-utils games

DESCRIPTION="A rewrite for GNOME of the Windows card game WUNO"
HOMEPAGE="http://sourceforge.net/projects/gnono/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="gnome-base/libgnomeui
	virtual/libintl"
DEPEND="${RDEPEND}
	sys-devel/gettext"

src_prepare() {
	epatch "${FILESDIR}"/${P}-gentoo.patch
	eautoreconf
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
	dodoc AUTHORS ChangeLog NEWS README TODO
	prepgamesdirs
}

pkg_preinst() {
	games_pkg_preinst
	gnome2_icon_savelist
}

pkg_postinst() {
	games_pkg_postinst
	gnome2_icon_cache_update
}

pkg_postrm() {
	gnome2_icon_cache_update
}
