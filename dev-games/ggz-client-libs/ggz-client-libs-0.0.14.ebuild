# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-games/cvs-repo/gentoo-x86/dev-games/ggz-client-libs/Attic/ggz-client-libs-0.0.14.ebuild,v 1.2 2007/03/06 12:05:50 nyhm Exp $

inherit games-ggz

DESCRIPTION="The client libraries for GGZ Gaming Zone"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="ppc sparc x86"
IUSE="debug"

RDEPEND="~dev-games/libggz-${PV}
	dev-libs/expat
	virtual/libintl"
DEPEND="${RDEPEND}
	sys-devel/gettext"
