# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdeutils/Attic/kdeutils-3.2.2.ebuild,v 1.3 2004/04/27 00:54:35 caleb Exp $

inherit kde-dist

DESCRIPTION="KDE utilities"

KEYWORDS="~x86 ~ppc ~sparc ~alpha ~hppa ~amd64 ~ia64 ~mips"

DEPEND="~kde-base/kdebase-${PV}
	app-crypt/gnupg
	!app-crypt/kgpg"

src_unpack()
{
	kde_src_unpack
	epatch ${FILESDIR}/${P}-tarfix.patch
	epatch ${FILESDIR}/${P}-gcc34-compile.patch
}
