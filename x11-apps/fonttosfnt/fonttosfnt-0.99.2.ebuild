# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/fonttosfnt/Attic/fonttosfnt-0.99.2.ebuild,v 1.1 2005/11/11 19:47:59 joshuabaergen Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org fonttosfnt application"
KEYWORDS="~arm ~mips ~s390 ~sparc ~x86"
RDEPEND="x11-libs/libX11
	=media-libs/freetype-2*
	x11-libs/libfontenc"
DEPEND="${RDEPEND}"
