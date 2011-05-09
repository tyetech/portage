# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/krfb/Attic/krfb-4.6.2.ebuild,v 1.3 2011/05/09 23:08:03 hwoarang Exp $

EAPI=3

KDE_HANDBOOK="optional"
KMNAME="kdenetwork"
inherit kde4-meta

DESCRIPTION="VNC-compatible server to share KDE desktops"
KEYWORDS="amd64 ~ppc ~ppc64 x86 ~amd64-linux ~x86-linux"
IUSE="debug"

DEPEND="
	sys-libs/zlib
	virtual/jpeg
	!aqua? ( x11-libs/libXdamage )
"
RDEPEND="${DEPEND}"
