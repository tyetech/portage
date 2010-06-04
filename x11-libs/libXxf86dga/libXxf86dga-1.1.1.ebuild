# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-libs/cvs-repo/gentoo-x86/x11-libs/libXxf86dga/Attic/libXxf86dga-1.1.1.ebuild,v 1.7 2010/06/04 14:03:57 gmsoft Exp $

inherit x-modular

DESCRIPTION="X.Org Xxf86dga library"

KEYWORDS="~alpha amd64 arm hppa ~ia64 ~mips ppc ppc64 ~s390 ~sh ~sparc x86 ~x86-fbsd"
IUSE=""

RDEPEND="x11-libs/libX11
	x11-libs/libXext
	x11-proto/xproto
	>=x11-proto/xf86dgaproto-2.0.99.2"
DEPEND="${RDEPEND}"
