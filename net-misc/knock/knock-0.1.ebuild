# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/knock/Attic/knock-0.1.ebuild,v 1.8 2004/07/12 01:40:04 kloeri Exp $

DESCRIPTION="A simple port-knocking daemon"
HOMEPAGE="http://www.zeroflux.org/knock/"
SRC_URI="http://www.zeroflux.org/knock/${P}.tar.gz"

KEYWORDS="x86"
SLOT="0"
LICENSE="GPL-2"
IUSE=""

src_install() {
	make DESTDIR=${D} install || die "make install failed"
	dodoc README
	dohtml doc/index.html

	insinto /etc/conf.d; newins ${FILESDIR}/knockd.confd knock
	exeinto /etc/init.d; newexe ${FILESDIR}/knockd.initd knock
}
