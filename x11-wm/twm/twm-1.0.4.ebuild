# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-wm/cvs-repo/gentoo-x86/x11-wm/twm/Attic/twm-1.0.4.ebuild,v 1.13 2010/01/20 18:50:15 abcd Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org twm application"

KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 s390 sh sparc x86 ~x86-fbsd ~amd64-linux ~x86-linux"
IUSE=""

RDEPEND="x11-libs/libX11
	x11-libs/libXt
	x11-libs/libXmu"
DEPEND="${RDEPEND}
	sys-devel/flex
	sys-devel/bison"
