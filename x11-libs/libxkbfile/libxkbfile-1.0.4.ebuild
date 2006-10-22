# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-libs/cvs-repo/gentoo-x86/x11-libs/libxkbfile/Attic/libxkbfile-1.0.4.ebuild,v 1.1 2006/10/22 18:06:01 joshuabaergen Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org xkbfile library"

KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~x86-fbsd"

RDEPEND="x11-libs/libX11
	x11-proto/kbproto"
DEPEND="${RDEPEND}"
