# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdeaddons/Attic/kdeaddons-2.2.2-r1.ebuild,v 1.10 2003/02/13 12:25:25 vapier Exp $
inherit kde-dist

IUSE=""
DESCRIPTION="KDE $PV: addons - applets, plugins..."
KEYWORDS="x86 sparc"

newdepend "~kde-base/kdebase-${PV}
	~kde-base/kdenetwork-${PV}
	~kde-base/kdemultimedia-${PV}
	>=media-libs/libsdl-1.2"

