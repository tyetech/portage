# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-block/cvs-repo/gentoo-x86/sys-block/fio/fio-1.18.1.ebuild,v 1.1 2008/02/19 02:47:18 robbat2 Exp $

inherit eutils toolchain-funcs flag-o-matic

DESCRIPTION="Jens Axboe's Flexible IO tester"
HOMEPAGE="http://brick.kernel.dk/snaps/"
SRC_URI="http://brick.kernel.dk/snaps/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

DEPEND="dev-libs/libaio"
RDEPEND="${DEPEND}"

src_compile() {
	append-flags -W
	emake CC="$(tc-getCC)" OPTFLAGS="${CFLAGS}" || die "emake failed"
}

src_install() {
	emake install DESTDIR="${D}" prefix="/usr" || die "emake install failed"
	dodoc README REPORTING-BUGS HOWTO
	docinto examples
	dodoc examples/*
}
