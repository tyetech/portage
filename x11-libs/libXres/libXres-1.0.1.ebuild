# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-libs/cvs-repo/gentoo-x86/x11-libs/libXres/Attic/libXres-1.0.1.ebuild,v 1.8 2006/09/10 09:11:12 vapier Exp $

# Must be before x-modular eclass is inherited
# SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org XRes library"

KEYWORDS="alpha amd64 arm hppa ia64 mips ppc ppc64 s390 sh sparc x86 ~x86-fbsd"
RESTRICT="mirror"

RDEPEND="x11-libs/libX11
	x11-libs/libXext
	x11-proto/xproto"
DEPEND="${RDEPEND}
	x11-proto/resourceproto"
