# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/xwud/Attic/xwud-0.99.0.ebuild,v 1.2 2005/08/08 20:14:20 fmccor Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org xwud application"
KEYWORDS="~sparc ~x86"
RDEPEND="x11-libs/libX11"
DEPEND="${RDEPEND}"
