# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-libs/cvs-repo/gentoo-x86/dev-libs/uthash/uthash-1.9.4.ebuild,v 1.1 2011/11/14 18:54:00 hwoarang Exp $

inherit toolchain-funcs

DESCRIPTION="An easy-to-use hash implementation for C programmers"
HOMEPAGE="http://uthash.sourceforge.net"
SRC_URI="mirror://sourceforge/uthash/${P}.tar.bz2"

LICENSE="BSD-1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE="test"

DEPEND="test? ( dev-lang/perl )"
RDEPEND=""

src_test() {
	cd tests
	sed -i "/CFLAGS/s/-O3/${CFLAGS}/" Makefile || die "sed cflags failed"
	emake CC="$(tc-getCC)" || die "emake failed"
}

src_install() {
	insinto /usr/include
	doins src/*.h || die "doins failed"

	dodoc doc/txt/{ChangeLog,userguide,ut*}.txt || die "dodoc failed"
}
