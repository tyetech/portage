# Copyright 1999-2001 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdeaddons/Attic/kdeaddons-2.2.2-r1.ebuild,v 1.4 2002/07/25 17:53:21 danarmak Exp $
inherit kde-dist

DESCRIPTION="KDE $PV: addons - applets, plugins..."
KEYWORDS="x86"

newdepend "~kde-base/kdebase-${PV}
	~kde-base/kdenetwork-${PV}
	~kde-base/kdemultimedia-${PV}
	>=media-libs/libsdl-1.2"

