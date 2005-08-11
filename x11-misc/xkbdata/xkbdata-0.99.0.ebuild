# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/xkbdata/Attic/xkbdata-0.99.0.ebuild,v 1.3 2005/08/11 05:07:43 spyderous Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org xkbdata data"
KEYWORDS="~sparc ~x86"
RDEPEND="x11-apps/xkbcomp"
DEPEND="${RDEPEND}"

src_install() {
	x-modular_src_install
	keepdir /var/lib/xkb
	dosym ../../../../var/lib/xkb /usr/lib/X11/xkb/compiled
}
