# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/xdriinfo/Attic/xdriinfo-0.99.0_pre20050908.ebuild,v 1.1 2005/09/09 02:52:04 joshuabaergen Exp $

inherit versionator

# Must be before x-modular eclass is inherited
SNAPSHOT="yes"

# Fix ${S} in x-modular for pre ebuilds
MY_P="${PN}-$(get_version_component_range 1-3)"
S="${WORKDIR}/${MY_P}"

inherit x-modular

# Snapshots don't exist on fdo
SRC_URI="mirror://gentoo/${P}.tar.bz2"

DESCRIPTION="X.Org xdriinfo application"
KEYWORDS="~x86"
RDEPEND="x11-libs/libX11"
DEPEND="${RDEPEND}
	x11-proto/glproto"
