# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/rgb/Attic/rgb-0.99.0-r1.ebuild,v 1.2 2005/08/15 18:07:00 herbs Exp $

# Must be before x-modular eclass is inherited
SNAPSHOT="yes"

inherit x-modular

PATCHES="${FILESDIR}/rgb-path.patch"

DESCRIPTION="X.Org rgb application"
KEYWORDS="~amd64 ~sparc ~x86"
RDEPEND="x11-libs/libX11
	x11-libs/libXt"
DEPEND="${RDEPEND}"
