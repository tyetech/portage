# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdeutils/Attic/kdeutils-3.2.0_beta1.ebuild,v 1.5 2003/11/13 21:33:55 caleb Exp $
inherit kde-dist

IUSE=""
DESCRIPTION="KDE utilities"

KEYWORDS="~x86"

newdepend "~kde-base/kdebase-${PV}
	app-crypt/gnupg
	!app-crypt/kgpg"
