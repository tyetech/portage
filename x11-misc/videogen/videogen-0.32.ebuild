# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/videogen/Attic/videogen-0.32.ebuild,v 1.2 2004/06/24 22:35:12 agriffis Exp $

DESCRIPTION="Small utility to generate XFree86 modelines and fbset timings"
HOMEPAGE="http://www.dynaweb.hu/opensource/videogen/"
SRC_URI="http://www.dynaweb.hu/opensource/videogen/download/${P}.tar.gz"
IUSE=""
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"

src_unpack() {
	unpack ${A}
	sed -i 's:CFLAGS = :# CFLAGS = :' ${S}/Makefile
	sed -i "s:CC = gcc:CC = ${CC}:" ${S}/Makefile
}

src_compile() {
	emake || die "error while compiling videogen"
}

src_install() {
	dobin videogen
	doman videogen.1x
	dodoc BUGS CHANGES INSTALL README THANKS videogen.sample
}
