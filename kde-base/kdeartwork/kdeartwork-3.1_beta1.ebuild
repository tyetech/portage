# Copyright 1999-2001 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdeartwork/Attic/kdeartwork-3.1_beta1.ebuild,v 1.1 2002/08/22 21:13:57 danarmak Exp $
inherit kde-dist 

newdepend "opengl? ( virtual/opengl ) >=kde-base/kdebase-${PV}"

DESCRIPTION="KDE $PV - artwork"

KEYWORDS="x86"

myconf="$myconf --with-dpms"
use opengl && myconf="$myconf --with-gl" || myconf="$myconf --without-gl" 

PATCHES="$FILESDIR/xsaver-conflicting-typedefs.diff"

