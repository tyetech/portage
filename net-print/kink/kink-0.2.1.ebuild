# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-print/cvs-repo/gentoo-x86/net-print/kink/Attic/kink-0.2.1.ebuild,v 1.5 2007/01/06 19:10:30 cryos Exp $

inherit kde eutils

DESCRIPTION="KDE printer ink level utility monitor"
HOMEPAGE="http://kink.sourceforge.net/"
SRC_URI="mirror://sourceforge/kink/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 amd64 ~ppc"
IUSE=""

DEPEND="<=net-print/libinklevel-0.6.5"
need-kde 3.1

src_unpack() {
	unpack ${A}
	cd ${S}
	epatch ${FILESDIR}/kink-0.2.1-compilefix.diff
}

