# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdebase-wallpapers/Attic/kdebase-wallpapers-4.3.0.ebuild,v 1.2 2009/08/08 16:29:24 jer Exp $

EAPI="2"

KMNAME="kdebase-workspace"
KMMODULE="wallpapers"
inherit kde4-meta

DESCRIPTION="KDE wallpapers"
KEYWORDS="~amd64 ~hppa ~x86"
IUSE=""

RDEPEND="
	!kdeprefix? ( !kde-base/kde-wallpapers[-kdeprefix] )
	kdeprefix? ( !kde-base/kde-wallpapers:${SLOT} )
"
