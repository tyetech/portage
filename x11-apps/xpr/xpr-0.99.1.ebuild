# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/xpr/Attic/xpr-0.99.1.ebuild,v 1.1 2005/10/20 00:45:24 spyderous Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org xpr application"
KEYWORDS="~arm ~mips ~s390 ~sparc ~x86"
RDEPEND="x11-libs/libXmu
	x11-libs/libX11"
DEPEND="${RDEPEND}"
