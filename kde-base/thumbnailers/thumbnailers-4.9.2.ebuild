# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/thumbnailers/thumbnailers-4.9.2.ebuild,v 1.1 2012/10/02 18:11:48 johu Exp $

EAPI=4

KMNAME="kdegraphics-thumbnailers"
inherit kde4-base

DESCRIPTION="KDE 4 thumbnail generators for PDF/PS files"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE="debug"

DEPEND="
	$(add_kdebase_dep libkdcraw)
	$(add_kdebase_dep libkexiv2)
	media-libs/lcms:0
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${KMNAME}-${PV}"
