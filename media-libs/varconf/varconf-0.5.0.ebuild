# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/varconf/Attic/varconf-0.5.0.ebuild,v 1.2 2002/07/11 06:30:40 drobbins Exp $

S="${WORKDIR}/${P}"
SRC_URI="ftp://victor.worldforge.org/pub/worldforge/libs/varconf/${P}.tar.bz2"
HOMEPAGE="http://www.worldforge.net"
SLOT="0"
DEPEND="virtual/glibc"

src_compile() {

	./configure --host=${CHOST} --prefix=/usr || die
	emake || die

}

src_install() {

	make DESTDIR=${D} install || die

}
