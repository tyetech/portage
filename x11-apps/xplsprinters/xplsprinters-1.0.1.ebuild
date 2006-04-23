# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/xplsprinters/Attic/xplsprinters-1.0.1.ebuild,v 1.4 2006/04/23 10:46:10 gmsoft Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org xplsprinters application"
KEYWORDS="~arm ~hppa ~mips ~ppc64 ~s390 ~sparc ~x86 ~x86-fbsd"
RDEPEND="x11-libs/libX11
	x11-libs/libXp
	x11-libs/libXprintUtil"
DEPEND="${RDEPEND}"
