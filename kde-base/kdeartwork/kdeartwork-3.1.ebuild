# Copyright 1999-2001 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdeartwork/Attic/kdeartwork-3.1.ebuild,v 1.4 2003/02/01 18:55:01 jmorgan Exp $
inherit kde-dist 

IUSE="opengl"
newdepend "opengl? ( virtual/opengl ) ~kde-base/kdebase-${PV}"

DESCRIPTION="KDE artwork package"

KEYWORDS="x86 ppc ~sparc"

myconf="$myconf --with-dpms"
use opengl && myconf="$myconf --with-gl" || myconf="$myconf --without-gl" 

PATCHES="$FILESDIR/xsaver-conflicting-typedefs.diff"

