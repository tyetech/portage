# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-misc/cvs-repo/gentoo-x86/app-misc/btail/btail-0.3.ebuild,v 1.1 2011/06/24 05:49:36 jer Exp $

EAPI="4"

inherit toolchain-funcs

DESCRIPTION="Bayesian logfile filter"
HOMEPAGE="http://www.vanheusden.com/btail/"
SRC_URI="${HOMEPAGE}/${P}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~ppc ~x86"
IUSE=""

DEPEND="sys-libs/gdbm"
RDEPEND="${DEPEND}"

src_prepare() {
	sed -i Makefile \
		-e '/^LDFLAGS/s:=:+=:g' \
		-e '/$(CC)/s:-Wall:$(CFLAGS) &:g' \
		|| die
	sed -i conf.cpp \
		-e '/Configline/s:):, line):g' \
		|| die
}

src_compile() {
	emake CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}" \
		CC="$(tc-getCC)" \
		CXX="$(tc-getCXX)"
}

src_install() {
	dobin blearn btail
	dodoc readme.txt btail.conf license.txt
}
