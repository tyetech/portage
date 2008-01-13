# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/xdbedizzy/Attic/xdbedizzy-1.0.2.ebuild,v 1.3 2008/01/13 09:35:38 vapier Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org xdbedizzy application"
KEYWORDS="arm ~mips ~ppc ~ppc64 s390 sh ~sparc x86"

# xprint support isn't optional, despite what configure says.
#IUSE="xprint"
RDEPEND="x11-libs/libXext
	x11-libs/libXprintUtil
	x11-libs/libXp"
#	xprint? ( x11-libs/libXprintUtil
#		x11-libs/libXp )"
DEPEND="${RDEPEND}"

#CONFIGURE_OPTIONS="$(use_enable xprint)"
