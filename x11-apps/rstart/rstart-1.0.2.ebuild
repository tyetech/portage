# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/rstart/Attic/rstart-1.0.2.ebuild,v 1.5 2009/05/05 07:38:47 fauli Exp $

# Must be before x-modular eclass is inherited
# Hack to make autoreconf run for our patch
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org rstart application"
KEYWORDS="arm ~mips ~ppc ~ppc64 s390 sh ~sparc x86"
IUSE=""
RDEPEND="x11-libs/libX11"
DEPEND="${RDEPEND}"

#PATCHES="${FILESDIR}/rstart-destdir.patch"
