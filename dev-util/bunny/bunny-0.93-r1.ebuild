# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-util/cvs-repo/gentoo-x86/dev-util/bunny/bunny-0.93-r1.ebuild,v 1.1 2010/09/20 19:46:54 jer Exp $

EAPI="2"

inherit toolchain-funcs

DESCRIPTION="A small general purpose fuzzer for C programs."
HOMEPAGE="http://code.google.com/p/bunny-the-fuzzer"
SRC_URI="http://bunny-the-fuzzer.googlecode.com/files/${P}.tgz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-libs/openssl"
DEPEND="${RDEPEND}"

S=${WORKDIR}/${PN}

src_prepare() {
	sed -i Makefile -e '/ -o /s|$(CFLAGS)|& $(LDFLAGS)|' || die "sed Makefile"
}

src_compile() {
	tc-export CC
	emake CFLAGS="${CFLAGS}" || die "emake failed"
}

src_test() {
	emake test1 || die "emake test1 failed"
	emake test2 || die "emake test2 failed"
	emake test3 || die "emake test3 failed"
}

src_install() {
	dobin ${PN}-{exec,flow,gcc,main,trace} || die "dobin failed"
	dodoc CHANGES README
}
