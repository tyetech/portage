# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/iftop/Attic/iftop-0.10.ebuild,v 1.2 2003/01/04 02:01:11 aliz Exp $

IUSE=""

S=${WORKDIR}/${P}
DESCRIPTION="display bandwidth usage on an interface"
SRC_URI="http://www.ex-parrot.com/~pdw/iftop/download/${P}.tar.gz"
HOMEPAGE="http://www.ex-parrot.com/~pdw/iftop/"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86"

DEPEND="sys-libs/ncurses
	net-libs/libpcap"

src_unpack() {
	unpack ${A}
	cd ${S}

	sed -e 's/^PREFIX.*$/PREFIX = \/usr/' Makefile > Makefile.gentoo
	mv Makefile.gentoo Makefile
}

src_compile() {
	make || die
}

src_install() {
	dosbin iftop
	doman iftop.8
	dodoc COPYING CHANGES README
}

