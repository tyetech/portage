# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/sarg/Attic/sarg-1.4.1.ebuild,v 1.5 2004/06/24 22:17:21 agriffis Exp $

DESCRIPTION="Sarg (Squid Analysis Report Generator) is a tool that allows you to view where your users are going to on the Internet."
HOMEPAGE="http://web.onda.com.br/orso/sarg.html"
SRC_URI="http://web.onda.com.br/orso/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"

DEPEND=""
RDEPEND=">=net-www/squid-2.5.1"

src_compile() {
	rm -rf config.cache
	./configure \
		--enable-bindir=/usr/bin \
		--enable-mandir=/usr/man/man1 \
		--enable-sysconfdir=/etc/sarg || die "./configure failed"
	emake || die
}

src_install() {
	dodir /etc/sarg /usr/bin /usr/man/man1
	make \
		BINDIR=${D}/usr/bin \
		MANDIR=${D}/usr/man/man1 \
		SYSCONFDIR=${D}/etc/sarg \
		install || die
}
