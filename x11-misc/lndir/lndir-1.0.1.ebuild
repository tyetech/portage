# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/lndir/Attic/lndir-1.0.1.ebuild,v 1.3 2006/02/09 17:29:15 chutzpah Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org lndir utility"
KEYWORDS="~amd64 ~ppc ~x86"
RDEPEND=""
DEPEND="${RDEPEND}
		x11-proto/xproto"
