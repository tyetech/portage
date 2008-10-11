# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/xrx/Attic/xrx-1.0.1.ebuild,v 1.5 2008/10/11 22:24:36 flameeyes Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org xrx application"
KEYWORDS="~ppc ~ppc64 x86"
RDEPEND="x11-libs/libX11
	x11-libs/libXt
	x11-libs/libXext"
DEPEND="${RDEPEND}
	x11-proto/xproxymanagementprotocol"
IUSE="ipv6"

CONFIGURE_OPTIONS="$(use_enable ipv6)"
