# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/xfce-base/cvs-repo/gentoo-x86/xfce-base/xfprint/Attic/xfprint-4.2.3.ebuild,v 1.9 2006/07/13 20:39:15 agriffis Exp $

inherit xfce42

DESCRIPTION="Xfce 4 print manager panel plugin"
LICENSE="BSD"
KEYWORDS="~alpha amd64 ~arm hppa ia64 mips ppc ppc64 sparc x86"

RDEPEND="|| ( ( x11-libs/libX11
	x11-libs/libICE
	x11-libs/libSM )
	virtual/x11 )
	~xfce-base/xfce4-panel-${PV}
	app-text/a2ps
	app-text/psutils"

core_package
