# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/cervisia/Attic/cervisia-4.3.0.ebuild,v 1.1 2009/08/03 23:15:08 wired Exp $

EAPI="2"

KMNAME="kdesdk"
inherit kde4-meta

DESCRIPTION="Cervisia - A KDE CVS frontend"
KEYWORDS="~amd64 ~x86"
IUSE="debug +handbook"

RDEPEND="
	dev-util/cvs
"
