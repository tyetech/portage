# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/gwenview/Attic/gwenview-4.0.5.ebuild,v 1.1 2008/06/05 21:02:41 keytoaster Exp $

EAPI="1"

KMNAME=kdegraphics
inherit kde4-meta

DESCRIPTION="KDE image viewer"
KEYWORDS="~amd64 ~x86"
IUSE="debug htmlhandbook"

DEPEND="
	media-gfx/exiv2
	media-libs/jpeg"
RDEPEND="${DEPEND}"
