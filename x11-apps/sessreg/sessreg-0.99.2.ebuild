# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/sessreg/Attic/sessreg-0.99.2.ebuild,v 1.1 2005/12/04 21:50:33 joshuabaergen Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org sessreg application"
KEYWORDS="~mips ~x86"
RDEPEND=""
DEPEND="${RDEPEND}
	x11-proto/xproto"
