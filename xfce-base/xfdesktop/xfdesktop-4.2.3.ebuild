# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/xfce-base/cvs-repo/gentoo-x86/xfce-base/xfdesktop/Attic/xfdesktop-4.2.3.ebuild,v 1.10 2006/09/10 04:06:35 vapier Exp $

inherit xfce42

DESCRIPTION="Xfce 4 desktop manager"
KEYWORDS="~alpha amd64 arm hppa ia64 mips ppc ppc64 sparc x86"

RDEPEND="|| ( ( x11-libs/libX11
	x11-libs/libICE
	x11-libs/libSM )
	virtual/x11 )
	~xfce-base/xfce4-panel-${PV}"
DEPEND="${RDEPEND}
	|| ( x11-libs/libXt virtual/x11 )"

core_package
