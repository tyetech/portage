# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-libs/cvs-repo/gentoo-x86/dev-libs/libevent/Attic/libevent-0.8a.ebuild,v 1.1 2004/07/16 18:07:33 aliz Exp $

DESCRIPTION="A library to execute a function when a specific event occurs on a file descriptor"
HOMEPAGE="http://monkey.org/~provos/libevent/"
SRC_URI="http://monkey.org/~provos/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~ppc ~sparc ~mips ~arm hppa ~amd64 ~ppc64 ~s390"
IUSE=""

RDEPEND=""
DEPEND="sys-devel/autoconf
	>=sys-devel/automake-1.4"

src_unpack() {
	unpack ${A}
	cd ${S}

	# Fails to compile for me if this file exists
	rm -f compat/sys/time.h
}

src_install() {
	dolib libevent.a || die
	doman event.3
	insinto /usr/include
	doins event.h || die
}
