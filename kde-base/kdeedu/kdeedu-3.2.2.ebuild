# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdeedu/Attic/kdeedu-3.2.2.ebuild,v 1.4 2004/05/12 15:42:59 caleb Exp $

inherit kde-dist eutils

DESCRIPTION="KDE educational apps"

KEYWORDS="x86 ~ppc ~sparc ~alpha ~hppa ~amd64 ~ia64"

src_unpack()
{
	kde_src_unpack
	epatch ${FILESDIR}/${P}-gcc34-compile.patch
}

