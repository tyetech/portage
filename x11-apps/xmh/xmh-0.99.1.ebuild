# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/xmh/Attic/xmh-0.99.1.ebuild,v 1.1 2005/10/20 00:45:24 spyderous Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org xmh application"
KEYWORDS="~arm ~mips ~s390 ~sparc ~x86"
IUSE="xprint"
RDEPEND="x11-libs/libXaw"
DEPEND="${RDEPEND}"

CONFIGURE_OPTIONS="$(use_enable xprint)"

pkg_setup() {
	if use xprint && ! built_with_use x11-libs/libXaw xprint; then
		die "Build x11-libs/libXaw with USE=xprint."
	fi
}
