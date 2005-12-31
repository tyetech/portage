# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-wm/cvs-repo/gentoo-x86/x11-wm/twm/Attic/twm-1.0.1.ebuild,v 1.3 2005/12/31 09:51:10 vapier Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org twm application"
KEYWORDS="~alpha ~amd64 ~arm ~mips ~ppc ~s390 ~sh ~sparc ~x86"
RDEPEND="x11-libs/libX11
	x11-libs/libXt
	x11-libs/libXmu"
DEPEND="${RDEPEND}"
