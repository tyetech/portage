# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/libkscan/Attic/libkscan-4.0.2.ebuild,v 1.1 2008/03/11 00:01:05 philantrop Exp $

EAPI="1"

KMNAME=kdegraphics
inherit kde4-meta

DESCRIPTION="KDE scanner library"
KEYWORDS="~amd64 ~x86"
IUSE="debug htmlhandbook"

DEPEND="
	kde-base/qimageblitz
	media-gfx/sane-backends"
RDEPEND="${DEPEND}"
