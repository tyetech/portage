# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdeutils/Attic/kdeutils-3.2.1.ebuild,v 1.5 2004/04/17 08:41:43 lv Exp $

inherit kde-dist

DESCRIPTION="KDE utilities"

KEYWORDS="x86 ~ppc sparc ~alpha hppa amd64 ~ia64"

DEPEND="~kde-base/kdebase-${PV}
	app-crypt/gnupg
	!app-crypt/kgpg"
