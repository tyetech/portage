# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-chemistry/cvs-repo/gentoo-x86/sci-chemistry/chemtool/chemtool-1.6.13.ebuild,v 1.2 2012/05/04 07:02:32 jdhore Exp $

EAPI=4

 AUTOTOOLS_AUTORECONF=true

inherit autotools-utils eutils

DESCRIPTION="A GTK program for drawing organic molecules"
HOMEPAGE="http://ruby.chemie.uni-freiburg.de/~martin/chemtool/"
SRC_URI="http://ruby.chemie.uni-freiburg.de/~martin/chemtool/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="emf gnome nls"

RDEPEND="
	dev-libs/glib:2
	media-gfx/transfig
	x11-libs/gtk+:2
	x11-libs/libX11
	x11-libs/pango
	emf? ( media-libs/libemf )"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

AUTOTOOLS_IN_SOURCE_BUILD=1

PATCHES=(
	"${FILESDIR}"/${PV}-no-underlinking.patch
	)

src_configure() {
	local myeconfargs=(
		--without-kdedir
		$(use_with gnome gnomedir /usr)
		$(use_enable emf)
		--enable-undo
		--enable-menu
		)
	autotools-utils_src_configure
}

src_install() {
	autotools-utils_src_install

	insinto /usr/share/${PN}/examples
	doins "${S}"/examples/*
	if ! use nls; then rm -rf "${ED}"/usr/share/locale || die; fi

	insinto /usr/share/pixmaps
	doins chemtool.xpm
	make_desktop_entry ${PN} Chemtool ${PN} "Education;Science;Chemistry"
}
