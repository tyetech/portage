# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-libs/cvs-repo/gentoo-x86/x11-libs/libXdamage/Attic/libXdamage-1.1.2.ebuild,v 1.6 2010/01/14 17:34:17 jer Exp $

inherit x-modular

DESCRIPTION="X.Org Xdamage library"

KEYWORDS="~alpha amd64 ~arm hppa ~ia64 ~mips ppc ppc64 ~s390 ~sh ~sparc x86 ~x86-fbsd"
IUSE=""

RDEPEND="x11-libs/libX11
	x11-libs/libXfixes
	>=x11-proto/damageproto-1.1
	x11-proto/xproto"
DEPEND="${RDEPEND}"
