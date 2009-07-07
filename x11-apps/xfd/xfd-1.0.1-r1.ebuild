# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/xfd/Attic/xfd-1.0.1-r1.ebuild,v 1.9 2009/07/07 01:38:22 jer Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org xfd application"
KEYWORDS="amd64 arm hppa ~mips ppc ppc64 s390 sh sparc x86"
IUSE=""
RDEPEND="=media-libs/freetype-2*
	media-libs/fontconfig
	x11-libs/libXft
	x11-libs/libXaw"
DEPEND="${RDEPEND}"
