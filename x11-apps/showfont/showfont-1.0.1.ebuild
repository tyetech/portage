# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/showfont/Attic/showfont-1.0.1.ebuild,v 1.6 2008/01/13 09:36:01 vapier Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="font dumper for X font server"
KEYWORDS="arm ~mips ~ppc ~ppc64 s390 sh ~sparc x86"
RDEPEND="x11-libs/libFS"
DEPEND="${RDEPEND}"
