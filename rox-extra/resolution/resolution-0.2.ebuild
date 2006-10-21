# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/rox-extra/cvs-repo/gentoo-x86/rox-extra/resolution/Attic/resolution-0.2.ebuild,v 1.3 2006/10/21 17:41:34 lack Exp $

ROX_LIB_VER=1.9.3
inherit rox

DESCRIPTION="This rox program allows you to change the screen resolution at any time. It is non-permanent"
HOMEPAGE="http://rox.sourceforge.net/"
SRC_URI="http://rox.sourceforge.net/${P}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

DEPEND=""
RDEPEND="|| ( (
		x11-apps/xrandr
	)
		virtual/x11
	)
	"

APPNAME=Resolution
