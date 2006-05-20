# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/xbiff/Attic/xbiff-1.0.1.ebuild,v 1.4 2006/05/20 10:44:36 robbat2 Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org xbiff application"
KEYWORDS="~amd64 ~arm ~mips ~ppc64 ~s390 ~sparc ~x86 ~ppc"
IUSE="xprint"
RDEPEND="x11-libs/libXaw
	x11-misc/xbitmaps"
DEPEND="${RDEPEND}"

CONFIGURE_OPTIONS="$(use_enable xprint)"
