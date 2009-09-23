# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-libs/cvs-repo/gentoo-x86/net-libs/libtlen/Attic/libtlen-20031114.ebuild,v 1.10 2009/09/23 18:50:31 patrick Exp $

DESCRIPTION="Support library for Tlen IMS"
HOMEPAGE="http://libtlen.eu.org/"
SRC_URI="http://libtlen.eu.org/snapshots/archive/${P}.tar.gz"

KEYWORDS="~alpha ~amd64 ~ia64 ~mips ~ppc ~sparc x86"
SLOT="0"
LICENSE="GPL-2"
IUSE=""

DEPEND=""

src_compile() {
	econf \
		--enable-shared || die
	emake CFLAGS="${CFLAGS}" all || die
}

src_install() {
	einstall || die
	dodoc ChangeLog
}
