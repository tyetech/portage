# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-libs/cvs-repo/gentoo-x86/sys-libs/libfaketime/libfaketime-0.9-r1.ebuild,v 1.1 2012/02/27 23:54:08 radhermit Exp $

EAPI=4

inherit eutils toolchain-funcs multilib

DESCRIPTION="Report faked system time to programs"
HOMEPAGE="http://www.code-wizards.com/projects/libfaketime/"
SRC_URI="http://www.code-wizards.com/projects/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S=${WORKDIR}

src_prepare() {
	epatch "${FILESDIR}"/${P}-make.patch
	epatch "${FILESDIR}"/${P}-as-needed.patch
}

src_compile() {
	emake CC="$(tc-getCC)"
}

src_test() {
	emake CC="$(tc-getCC)" test
}

src_install() {
	dobin src/faketime
	doman man/faketime.1
	exeinto /usr/$(get_libdir)/faketime
	doexe src/${PN}*.so.*
	dosym ${PN}.so.1 /usr/$(get_libdir)/faketime/${PN}.so
	dosym ${PN}MT.so.1 /usr/$(get_libdir)/faketime/${PN}MT.so
	dodoc NEWS README TODO
}
