# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/sslwrap/sslwrap-2.0.6-r2.ebuild,v 1.1 2010/09/20 19:05:16 jer Exp $

EAPI="2"

inherit eutils toolchain-funcs

DESCRIPTION="TSL/SSL - Port Wrapper"
HOMEPAGE="http://www.rickk.com/sslwrap/index.htm"
SRC_URI="http://www.rickk.com/${PN}/${PN}.tar.gz -> ${P}.tar.gz
	mirror://gentoo/${PN}-gentoo.tar.bz2"

LICENSE="sslwrap"
SLOT="0"
KEYWORDS="~sparc ~x86"
IUSE=""

DEPEND=">=dev-libs/openssl-0.9.6"
RDEPEND="${DEPEND}"

S=${WORKDIR}/${PN}${PV//.}

src_prepare() {
	sed -i Makefile \
		-e 's:gcc:$(CC):' \
		-e 's:/usr/local/ssl/include:/usr/include/openssl:' \
		|| die "sed Makefile"

	cp -v "${WORKDIR}"/${PN}-gentoo/*.c . || die "cp"

	has_version '=dev-libs/openssl-0.9.7*' \
		&& epatch "${FILESDIR}/${PV}-openssl-0.9.7.patch"

	sed -i *.h *.c \
		-e 's:OPENSSL":"openssl\/:g' \
		-e 's:SSL_OP_NON_EXPORT_FIRST:SSL_OP_CIPHER_SERVER_PREFERENCE:g' \
		|| die "sed *.h *.c"
}

src_compile() {
	emake CC=$(tc-getCC) OPT="${CFLAGS} ${LDFLAGS}" || die "emake"
}

src_install() {
	dosbin sslwrap
	dodoc README
	dohtml -r ./
}
