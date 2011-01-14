# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/scripts/Attic/scripts-1.0.1.ebuild,v 1.11 2011/01/14 21:35:03 ranger Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="start an X program on a remote machine"
KEYWORDS="amd64 arm ~mips ppc ~ppc64 s390 sh ~sparc x86"
IUSE=""
RDEPEND="x11-libs/libX11"
DEPEND="${RDEPEND}"
