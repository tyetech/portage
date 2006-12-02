# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/xfce-base/cvs-repo/gentoo-x86/xfce-base/xfce4-panel/Attic/xfce4-panel-4.2.3.ebuild,v 1.12 2006/12/02 09:39:10 dev-zero Exp $

inherit xfce42

DESCRIPTION="Xfce 4 panel"
KEYWORDS="alpha amd64 arm hppa ia64 mips ppc ppc64 sparc x86 ~x86-fbsd"

RDEPEND="|| ( ( x11-libs/libX11
	x11-libs/libICE
	x11-libs/libSM )
	virtual/x11 )
	x11-libs/startup-notification
	~xfce-base/xfce-mcs-plugins-${PV}"
DEPEND="${RDEPEND}
	|| ( ( x11-libs/libXt
	x11-proto/xproto )
	virtual/x11 )"

core_package
