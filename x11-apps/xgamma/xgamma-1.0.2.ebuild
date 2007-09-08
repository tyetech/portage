# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/xgamma/Attic/xgamma-1.0.2.ebuild,v 1.1 2007/09/08 06:14:07 dberkholz Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="Alter a monitor's gamma correction through the X server"

KEYWORDS="~alpha ~amd64 ~arm ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"

RDEPEND="x11-libs/libXxf86vm"
DEPEND="${RDEPEND}"
