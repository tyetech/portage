# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-libs/cvs-repo/gentoo-x86/x11-libs/libXxf86misc/Attic/libXxf86misc-1.0.2.ebuild,v 1.1 2009/10/12 20:05:16 scarabeus Exp $

# Must be before x-modular eclass is inherited
# SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org Xxf86misc library"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~x86-fbsd"
IUSE=""

RDEPEND="x11-libs/libX11
	x11-libs/libXext"
DEPEND="${RDEPEND}
	x11-proto/xproto
	x11-proto/xf86miscproto"
