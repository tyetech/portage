# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdeartwork/Attic/kdeartwork-3.1.4.ebuild,v 1.2 2003/09/25 15:37:31 caleb Exp $
inherit kde-dist

IUSE="opengl"
newdepend "opengl? ( virtual/opengl ) =kde-base/kdebase-${PV}*"

DESCRIPTION="KDE artwork package"
KEYWORDS="x86 ~ppc ~sparc"
PATCHES="$FILESDIR/xsaver-conflicting-typedefs.diff"

myconf="$myconf --with-dpms"
use opengl && myconf="$myconf --with-gl" || myconf="$myconf --without-gl"
