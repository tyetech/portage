# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/xcmsdb/Attic/xcmsdb-1.0.1.ebuild,v 1.6 2008/01/13 09:35:43 vapier Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="Device Color Characterization utility for X Color Management System"
KEYWORDS="arm ~mips ~ppc ~ppc64 s390 sh ~sparc x86"
RDEPEND="x11-libs/libX11"
DEPEND="${RDEPEND}"
