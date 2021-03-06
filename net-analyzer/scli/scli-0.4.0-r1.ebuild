# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/scli/scli-0.4.0-r1.ebuild,v 1.1 2012/09/24 02:05:49 jer Exp $

EAPI=4

inherit flag-o-matic toolchain-funcs

DESCRIPTION="SNMP Command Line Interface"
HOMEPAGE="http://www.ibr.cs.tu-bs.de/projects/scli/"
SRC_URI="ftp://ftp.ibr.cs.tu-bs.de/pub/local/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

RDEPEND="
	dev-libs/glib:2
	dev-libs/libxml2
	net-libs/gnet
	net-libs/gsnmp
	sys-libs/ncurses
	sys-libs/readline
	sys-libs/zlib
	debug? ( dev-libs/dmalloc )
"
DEPEND="${RDEPEND}"

DOCS=( README AUTHORS NEWS TODO ChangeLog PORTING )

src_prepare() {
	sed -i stub/Makefile.in proc/Makefile.in \
		-e '/^AR = ar/d' || die
}

src_configure() {
	append-cppflags -I/usr/include/libxml2
	export AR=$(tc-getAR)
	econf \
		--enable-warnings \
		$(use_enable debug dmalloc)
}
