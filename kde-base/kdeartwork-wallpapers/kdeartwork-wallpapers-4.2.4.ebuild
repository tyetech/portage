# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdeartwork-wallpapers/Attic/kdeartwork-wallpapers-4.2.4.ebuild,v 1.2 2009/06/04 23:29:02 alexxy Exp $

EAPI="2"

RESTRICT="binchecks strip"

KMMODULE="wallpapers"
KMNAME="kdeartwork"
inherit kde4-meta

DESCRIPTION="Wallpapers from kde"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND="
	!kdeprefix? ( !<kde-base/kde-wallpapers-${PV}[-kdeprefix] )
	kdeprefix? ( !<kde-base/kde-wallpapers-${PV}:${SLOT} )
"
