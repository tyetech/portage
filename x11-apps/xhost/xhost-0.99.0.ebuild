# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/xhost/Attic/xhost-0.99.0.ebuild,v 1.3 2005/08/15 17:59:02 herbs Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org xhost application"
KEYWORDS="~amd64 ~sparc ~x86"
RDEPEND="x11-libs/libX11
	x11-libs/libXmu"
DEPEND="${RDEPEND}"
