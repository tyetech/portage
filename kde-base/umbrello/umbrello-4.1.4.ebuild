# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/umbrello/Attic/umbrello-4.1.4.ebuild,v 1.1 2009/01/13 23:36:28 alexxy Exp $

EAPI="2"

KMNAME=kdesdk
inherit kde4-meta

DESCRIPTION="KDE: Umbrello UML Modeller"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE="debug htmlhandbook"

COMMONDEPEND=">=dev-libs/boost-1.33.1
	dev-libs/libxml2
	dev-libs/libxslt"
DEPEND="${COMMONDEPEND}"
RDEPEND="${COMMONDEPEND}"
