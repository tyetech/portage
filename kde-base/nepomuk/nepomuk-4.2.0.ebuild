# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/nepomuk/Attic/nepomuk-4.2.0.ebuild,v 1.2 2009/02/01 08:30:45 jmbsvicetto Exp $

EAPI="2"

KMNAME="kdebase-runtime"
inherit kde4-meta

DESCRIPTION="Nepomuk KDE4 client"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE="debug"

DEPEND="
	dev-libs/soprano[clucene]
	>=kde-base/kdelibs-${PV}:${SLOT}[semantic-desktop]
"
RDEPEND="${DEPEND}"
