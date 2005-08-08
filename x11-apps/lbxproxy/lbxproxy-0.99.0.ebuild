# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/lbxproxy/Attic/lbxproxy-0.99.0.ebuild,v 1.1 2005/08/08 06:28:09 spyderous Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org lbxproxy application"
KEYWORDS="~x86"
RDEPEND="x11-libs/xtrans
	x11-libs/libXext
	x11-libs/liblbxutil
	x11-libs/libX11
	x11-libs/libICE"
DEPEND="${RDEPEND}
	x11-proto/xproxymanagementprotocol"
