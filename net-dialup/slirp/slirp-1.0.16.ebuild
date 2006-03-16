# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-dialup/cvs-repo/gentoo-x86/net-dialup/slirp/Attic/slirp-1.0.16.ebuild,v 1.3 2006/03/16 21:58:42 mrness Exp $

DESCRIPTION="Emulates a PPP or SLIP connection over a terminal"
HOMEPAGE="http://slirp.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

KEYWORDS="x86 -sparc -ia64 -amd64 -ppc64"
SLOT="0"
LICENSE="Artistic"
IUSE=""

src_compile() {
	cd src
	./configure || die "configure failed"
	make || die "make failed"
}

src_install() {
	dobin src/slirp
	cp src/slirp.man slirp.1
	doman slirp.1
	dodoc docs/* README.NEXT README ChangeLog COPYRIGHT
}
