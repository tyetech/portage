# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-libs/cvs-repo/gentoo-x86/dev-libs/eb/Attic/eb-3.3.4.ebuild,v 1.6 2004/06/26 08:19:04 kugelfang Exp $

IUSE="nls"

DESCRIPTION="EB is a C library and utilities for accessing CD-ROM books"
HOMEPAGE="http://www.sra.co.jp/people/m-kasahr/eb/"
SRC_URI="ftp://ftp.sra.co.jp/pub/misc/eb/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 ~amd64"

DEPEND="virtual/glibc
	sys-libs/zlib
	nls? ( sys-devel/gettext )"

src_compile () {

	econf `use_enable nls` || die
	emake || die
}

src_install () {

	einstall || die

	dodoc AUTHORS INSTALL* NEWS README*
}
