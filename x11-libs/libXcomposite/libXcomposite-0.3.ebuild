# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-libs/cvs-repo/gentoo-x86/x11-libs/libXcomposite/Attic/libXcomposite-0.3.ebuild,v 1.8 2006/07/11 01:25:10 agriffis Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org Xcomposite library"
KEYWORDS="alpha amd64 arm ~hppa ia64 mips ppc ppc64 sh sparc x86 ~x86-fbsd"
RDEPEND="x11-libs/libX11
	x11-libs/libXfixes
	x11-libs/libXext
	>=x11-proto/compositeproto-0.3
	x11-proto/xproto"
DEPEND="${RDEPEND}
	x11-proto/xextproto"
