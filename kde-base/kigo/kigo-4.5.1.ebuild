# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kigo/Attic/kigo-4.5.1.ebuild,v 1.1 2010/09/06 00:37:11 tampakrap Exp $

EAPI="3"

KDE_HANDBOOK=1
KMNAME="kdegames"
inherit games-ggz kde4-meta

DESCRIPTION="KDE Go game"
KEYWORDS=""
IUSE="debug"

RDEPEND="
	games-board/gnugo
"

src_install() {
	kde4-meta_src_install
	# and also we have to prepare the ggz dir
	insinto /usr/share/ggz/modules
	newins ${PN}/src/module.dsc ${P}.dsc || die "couldn't install .dsc file"
}

pkg_postinst() {
	kde4-meta_pkg_postinst
	games-ggz_pkg_postinst
}

pkg_postrm() {
	kde4-meta_pkg_postrm
	games-ggz_pkg_postrm
}
