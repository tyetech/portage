# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/xfd/Attic/xfd-0.99.0.ebuild,v 1.4 2005/09/28 03:01:36 spyderous Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org xfd application"
KEYWORDS="~arm ~s390 ~sparc ~x86"
# As of 20050927, we should be able to make xprint optional
#IUSE="xprint"
RDEPEND="=media-libs/freetype-2*
	media-libs/fontconfig
	x11-libs/libXft
	x11-libs/libXaw"
DEPEND="${RDEPEND}"

pkg_setup() {
	if ! built_with_use x11-libs/libXaw xprint; then
		die "Build x11-libs/libXaw with USE=xprint."
	fi
}
