# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-fonts/cvs-repo/gentoo-x86/media-fonts/font-bh-ttf/Attic/font-bh-ttf-1.0.0.ebuild,v 1.17 2007/06/10 13:33:26 armin76 Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org Bigelow & Holmes TrueType fonts"

KEYWORDS="alpha ~amd64 arm hppa ia64 m68k ~mips ppc ppc64 s390 sh sparc x86 ~x86-fbsd"

RDEPEND=""
DEPEND="${RDEPEND}
	media-libs/fontconfig
	x11-apps/ttmkfdir"
