# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdeedu/Attic/kdeedu-3.3.0.ebuild,v 1.2 2004/08/27 22:56:24 weeve Exp $

inherit kde-dist eutils

DESCRIPTION="KDE educational apps"

KEYWORDS="~x86 ~amd64 ~sparc"
IUSE=""

src_unpack() {
	kde_src_unpack
	# Fix for SPARC compilation issues, may also work for PPC, PPC64
	use sparc && epatch ${FILESDIR}/${P}-sparc.patch
}
