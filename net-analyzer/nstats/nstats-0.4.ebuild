# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/nstats/Attic/nstats-0.4.ebuild,v 1.1 2002/07/09 09:13:03 seemant Exp $

S=${WORKDIR}/${P}
DESCRIPTION="Displays statistics about ethernet traffic including protocol breakdown"
SRC_URI="http://trash.net/~reeler/nstats/files/${P}.tar.gz"
HOMEPAGE="http://reeler.org/nstats/"

SLOT="0"
LICENSE="GPL"
KEYWORDS="x86"

DEPEND=">=net-libs/libpcap-0.7.1"

src_compile() {
	econf || die "./configure failed"
	make || die "make failed"
}

src_install () {
	make DESTDIR=${D} install || die
	dodoc BUGS COPYING doc/TODO doc/ChangeLog
}
