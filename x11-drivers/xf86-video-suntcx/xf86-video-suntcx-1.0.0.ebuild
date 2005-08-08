# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-drivers/cvs-repo/gentoo-x86/x11-drivers/xf86-video-suntcx/Attic/xf86-video-suntcx-1.0.0.ebuild,v 1.2 2005/08/08 19:46:13 fmccor Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org driver for suntcx cards"
KEYWORDS="~sparc ~x86"
RDEPEND="x11-base/xorg-server"
DEPEND="${RDEPEND}
	x11-proto/xproto"
