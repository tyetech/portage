# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-mail/cvs-repo/gentoo-x86/net-mail/checkpassword/Attic/checkpassword-0.90-r1.ebuild,v 1.1 2003/03/05 20:53:37 vapier Exp $

inherit eutils

DESCRIPTION="A modern replacement for sendmail which uses maildirs"
SRC_URI="http://cr.yp.to/checkpwd/${P}.tar.gz"
HOMEPAGE="http://www.qmail.org/"

SLOT="0"
LICENSE="as-is"
KEYWORDS="x86 ppc sparc"

src_unpack() {
	unpack ${A}
	cd ${S}
	epatch ${FILESDIR}/${PV}-errno.patch
}

src_compile() {
	echo "gcc ${CFLAGS}" > conf-cc
	make || die
}

src_install() {				 
	into /
	dobin checkpassword
	dodoc CHANGES README TODO VERSION
}
