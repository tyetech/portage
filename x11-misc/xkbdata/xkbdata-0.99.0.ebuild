# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/xkbdata/Attic/xkbdata-0.99.0.ebuild,v 1.7 2005/08/30 13:05:50 herbs Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org xkbdata data"
KEYWORDS="~amd64 ~arm ~ppc ~s390 ~sparc ~x86"
RDEPEND="x11-apps/xkbcomp"
DEPEND="${RDEPEND}"

src_install() {
	x-modular_src_install
	keepdir /var/lib/xkb
	dosym ../../../../var/lib/xkb /usr/$(get_libdir)/X11/xkb/compiled
}
