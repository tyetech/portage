# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdeedu/Attic/kdeedu-3.2.0_beta2.ebuild,v 1.2 2004/01/04 15:31:57 weeve Exp $
inherit kde-dist

IUSE=""
DESCRIPTION="KDE educational apps"
KEYWORDS="~x86 ~sparc"

src_unpack() {
	kde_src_unpack
	use sparc && epatch ${FILESDIR}/kdeedu-3.2.0_beta2-sparc-lx200.patch
}

