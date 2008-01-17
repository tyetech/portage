# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kate/Attic/kate-4.0.0.ebuild,v 1.1 2008/01/17 23:33:07 philantrop Exp $

EAPI="1"

KMNAME=kdesdk
inherit kde4-meta

DESCRIPTION="Kate is an MDI texteditor."
KEYWORDS="~amd64 ~x86"
IUSE="debug htmlhandbook"

DEPEND="${DEPEND}
	|| ( >=kde-base/plasma-${PV}:${SLOT}
		>=kde-base/kdebase-${PV}:${SLOT} )"
RDEPEND="${DEPEND}
	dev-libs/libxml2
	dev-libs/libxslt"
