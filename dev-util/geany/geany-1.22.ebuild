# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-util/cvs-repo/gentoo-x86/dev-util/geany/geany-1.22.ebuild,v 1.5 2012/09/27 00:08:59 blueness Exp $

EAPI=4
inherit eutils gnome2-utils

LANGS="ar ast be bg ca cs de el en_GB es fi fr gl hu id it ja kk ko lb lt mn nl nn pl pt pt_BR ro ru sk sl sv tr uk vi zh_CN ZH_TW"
NOSHORTLANGS="en_GB zh_CN zh_TW"

DESCRIPTION="GTK+ based fast and lightweight IDE"
HOMEPAGE="http://www.geany.org"
SRC_URI="http://download.geany.org/${P}.tar.bz2"

LICENSE="GPL-2 Scintilla"
SLOT="0"
KEYWORDS="amd64 ppc x86 ~x86-fbsd ~amd64-linux ~x86-linux"
IUSE="+vte"

RDEPEND=">=x11-libs/gtk+-2.16:2
	>=dev-libs/glib-2.20:2
	vte? ( x11-libs/vte:0 )"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	dev-util/intltool
	sys-devel/gettext"

pkg_setup() {
	strip-linguas ${LANGS}
}

src_prepare() {
	# Syntax highlighting for Portage
	sed -i -e "s:*.sh;:*.sh;*.ebuild;*.eclass;:" \
		data/filetype_extensions.conf || die
}

src_configure() {
	econf \
		--disable-dependency-tracking \
		--docdir="/usr/share/doc/${PF}" \
		$(use_enable vte)
}

src_install() {
	emake DESTDIR="${D}" DOCDIR="${ED}/usr/share/doc/${PF}" install || die
	rm -f "${ED}"/usr/share/doc/${PF}/{COPYING,GPL-2,ScintillaLicense.txt}
	find "${ED}" -type f -name '*.la' -delete
}

pkg_preinst() { gnome2_icon_savelist; }
pkg_postinst() { gnome2_icon_cache_update; }
pkg_postrm() { gnome2_icon_cache_update; }
