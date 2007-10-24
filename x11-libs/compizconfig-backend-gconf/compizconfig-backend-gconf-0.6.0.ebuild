# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-libs/cvs-repo/gentoo-x86/x11-libs/compizconfig-backend-gconf/Attic/compizconfig-backend-gconf-0.6.0.ebuild,v 1.3 2007/10/24 17:56:44 lu_zero Exp $

DESCRIPTION="libcompizconfig gconf backend"
HOMEPAGE="http://compiz-fusion.org"
SRC_URI="http://releases.compiz-fusion.org/${PV}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~ppc ~x86"
IUSE=""
DEPEND=">=x11-wm/compiz-0.6.0
	>=x11-libs/libcompizconfig-0.6.0
	>=gnome-base/gconf-2.0"
