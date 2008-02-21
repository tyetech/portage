# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/xbacklight/Attic/xbacklight-1.1.ebuild,v 1.4 2008/02/21 23:56:55 robbat2 Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="Sets backlight level using the RandR 1.2 BACKLIGHT output property"
KEYWORDS="~amd64 x86 ~ppc"
RDEPEND=">=x11-libs/libXrandr-1.2"
DEPEND="${RDEPEND}"
