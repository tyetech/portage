# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-crypt/cvs-repo/gentoo-x86/app-crypt/cli-crypt/Attic/cli-crypt-1.0.ebuild,v 1.13 2004/08/06 22:56:05 slarti Exp $

inherit gcc

DESCRIPTION="Command-line interface to crypt(3)"
HOMEPAGE="http://freshmeat.net/projects/cli-crypt/"
SRC_URI="http://www.xjack.org/downloads/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 ppc sparc ~amd64"
IUSE=""

DEPEND="virtual/libc"

src_compile() {
	emake CC="$(gcc-getCC)" CFLAGS="${CFLAGS} -lcrypt" || die
}

src_install() {
	dobin crypt || die
}
