# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-libs/cvs-repo/gentoo-x86/dev-libs/libhtmlparse/libhtmlparse-0.1.13.ebuild,v 1.2 2005/05/06 12:06:14 ka0ttic Exp $

DESCRIPTION="libhtmlparse is a HTML parsing library. It takes HTML tags, text, etc and calls callbacks you define for each type of token in the document."
HOMEPAGE="http://msalem.translator.cx/libhtmlparse.html"
SRC_URI="http://msalem.translator.cx/dist/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="x86"
IUSE=""

RDEPEND="virtual/libc"
DEPEND="${RDEPEND}"

src_unpack() {
	cd ${WORKDIR}
	# for some reason, we get a "this does not look like a tar archive" error
	# but the following works... go figure.
	gunzip -c ${DISTDIR}/${P}.tar.gz > ${P}.tar
	tar xf ${P}.tar || die "failed to unpack ${P}.tar"
	rm ${P}.tar
}

src_install() {
	make DESTDIR="${D}" install || die "make install failed"
	dodoc AUTHORS BUGS COPYING INSTALL ChangeLog NEWS README TODO
}
