# Copyright 1999-2001 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Dan Armak <danarmak@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdeaddons/Attic/kdeaddons-2.2.2-r1.ebuild,v 1.2 2002/05/21 18:14:08 danarmak Exp $

inherit kde-dist || die

DESCRIPTION="${DESCRIPTION}Addons"

newdepend "~kde-base/kdebase-${PV}
	~kde-base/kdenetwork-${PV}
	~kde-base/kdemultimedia-${PV}
	>=media-libs/libsdl-1.2"

