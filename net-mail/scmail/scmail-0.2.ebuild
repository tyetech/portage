# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-mail/cvs-repo/gentoo-x86/net-mail/scmail/Attic/scmail-0.2.ebuild,v 1.2 2004/02/21 15:32:53 hattya Exp $

IUSE=""

HOMEPAGE="http://namazu.org/~satoru/scmail/"
DESCRIPTION="a mail filter written in Scheme"
SRC_URI="http://namazu.org/~satoru/scmail/${P}.tar.gz"

LICENSE="GPL-2"
KEYWORDS="x86"
SLOT="0"
S="${WORKDIR}/${P}"

DEPEND=">=dev-lisp/gauche-0.6.3"

src_unpack() {

	unpack ${A}
	epatch ${FILESDIR}/${P}-gentoo.diff

}

src_compile() {

	emake || die

}

src_install() {

	einstall PREFIX=${D}/usr || die

	dodoc scmailrc*.sample doc/*

}
