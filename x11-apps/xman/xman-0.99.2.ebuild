# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/xman/Attic/xman-0.99.2.ebuild,v 1.2 2005/11/17 13:42:58 herbs Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org xman application"
KEYWORDS="~amd64 ~arm ~mips ~s390 ~sparc ~x86"
# Broken without xprint
IUSE="xprint"
RDEPEND="xprint? ( x11-libs/libXprintUtil )"
#x11-libs/libXprintUtil"
DEPEND="${RDEPEND}"

CONFIGURE_OPTIONS="$(use_enable xprint)"
