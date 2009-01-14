# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/xclipboard/Attic/xclipboard-1.0.1-r1.ebuild,v 1.1 2009/01/14 14:10:50 remi Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="interchange between cut buffer and selection"
KEYWORDS="~amd64 ~arm ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE=""
RDEPEND="x11-libs/libXaw"
DEPEND="${RDEPEND}"

CONFIGURE_OPTIONS="--disable-xprint"
