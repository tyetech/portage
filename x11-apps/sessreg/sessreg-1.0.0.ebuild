# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/sessreg/Attic/sessreg-1.0.0.ebuild,v 1.3 2006/02/14 20:51:01 corsair Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org sessreg application"
KEYWORDS="~amd64 ~mips ~ppc64 ~sparc ~x86"
RDEPEND=""
DEPEND="${RDEPEND}
	x11-proto/xproto"
