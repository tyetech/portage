# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/bigeye/Attic/bigeye-0.3.ebuild,v 1.1 2002/08/19 03:49:31 blocke Exp $

S=${WORKDIR}/${P}
DESCRIPTION="Bigeye is a network utility dump and simple honeypot utility"
HOMEPAGE="http://violating.us/projects/bigeye/"
SRC_URI="http://violating.us/projects/bigeye/download/${P}.tgz"
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86"

DEPEND="virtual/glibc"

src_compile() {

	cd ${S}/src
	gcc ${CFLAGS} bigeye.c emulate.c -o bigeye -W

}

src_install() {

	dobin src/bigeye

	dodir /usr/share/bigeye/messages
	insinto /usr/share/bigeye
	doins sig.file

	cp -r messages/* ${D}/usr/share/bigeye/messages

	dodoc README

}

pkg_postinst() {

	einfo
	einfo The service emulation files mentioned in the README are located in
	einfo /usr/share/bigeye/messages.
	einfo

}

