# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/xkbprint/Attic/xkbprint-1.0.1.ebuild,v 1.4 2006/10/10 23:55:19 dberkholz Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="print an XKB keyboard description"
KEYWORDS="~amd64 ~arm ~mips ~ppc ~ppc64 ~s390 ~sparc ~x86"
RDEPEND="x11-libs/libxkbfile"
DEPEND="${RDEPEND}"
