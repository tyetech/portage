# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdeutils/Attic/kdeutils-3.2.3.ebuild,v 1.7 2004/08/11 23:47:43 weeve Exp $

inherit kde-dist eutils

DESCRIPTION="KDE utilities"

KEYWORDS="x86 ~ppc sparc ~alpha hppa amd64 ~ia64 ~mips"
IUSE=""

DEPEND="~kde-base/kdebase-${PV}
	app-crypt/gnupg
	!app-crypt/kgpg"

src_unpack()
{
	kde_src_unpack
}
