# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-ftp/cvs-repo/gentoo-x86/net-ftp/ncftp/Attic/ncftp-3.1.4.ebuild,v 1.7 2002/12/15 11:58:45 bjb Exp $


S=${WORKDIR}/${P}
DESCRIPTION="An extremely configurable ftp client"
SRC_URI="ftp://ftp.ncftp.com/ncftp/${P}-src.tar.bz2"
HOMEPAGE="http://www.ncftp.com/"
DEPEND="virtual/glibc
	>=sys-libs/ncurses-5.2"

SLOT="0"
LICENSE="Clarified-Artistic"
KEYWORDS="x86 ppc sparc alpha"

src_compile() {

	econf || die
	emake || die
}

src_install() {
	dodir /usr/share
	make prefix=${D}/usr mandir=${D}/usr/share/man install || die

	dodoc CHANGELOG FIREWALL-PROXY-README LICENSE.txt
	dodoc READLINE-README README WHATSNEW-3.0
}
