# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-mail/cvs-repo/gentoo-x86/net-mail/mailx-support/Attic/mailx-support-20030215.ebuild,v 1.5 2003/08/03 15:36:54 gmsoft Exp $

DESCRIPTION="Provides mail.local and lockspool"
HOMEPAGE="http://www.openbsd.org/"
LICENSE="BSD"
SLOT="0"
KEYWORDS="x86 ~ppc sparc ~alpha ~mips hppa"
SRC_URI="mirror://gentoo/${P}.tar.bz2"
DEPEND=""
RDEPEND=""

src_unpack() {
	unpack ${A}	
	cd ${S}
	epatch ${FILESDIR}/${P}-gentoo.patch
}

src_compile() {
	emake
}

src_install() {
	einstall
}
