# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-cpp/cvs-repo/gentoo-x86/dev-cpp/poslib/Attic/poslib-1.0.2.ebuild,v 1.2 2004/04/12 17:06:27 aliz Exp $

DESCRIPTION="A library for creating C++ programs using the Domain Name System"
HOMEPAGE="http://www.posadis.org/projects/poslib.php"
SRC_URI="mirror://sourceforge/posadis/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 amd64"
IUSE="ipv6"

DEPEND="virtual/glibc"

src_compile() {
	econf \
		--with-cxxflags="${CXXFLAGS} -funsigned-char" \
		`use_enable ipv6` || die
	emake || die
}

src_install() {
	make DESTDIR=${D} install || die
	dodoc AUTHORS ChangeLog INSTALL NEWS README TODO
}
