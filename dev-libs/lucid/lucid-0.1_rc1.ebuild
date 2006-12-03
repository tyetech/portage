# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-libs/cvs-repo/gentoo-x86/dev-libs/lucid/Attic/lucid-0.1_rc1.ebuild,v 1.1 2006/12/03 16:56:23 hollow Exp $

DESCRIPTION="lucid utility library"
HOMEPAGE="http://svn.linux-vserver.org/projects/${PN}"
SRC_URI="http://people.linux-vserver.org/~hollow/${PN}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"

IUSE=""

DEPEND=""

src_unpack() {
	unpack "${A}" || die
	cd "${S}" || die

	econf --disable-doxygen-doc || die "econf failed"
}

src_compile() {
	emake || die "emake failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "install failed"
	dodoc README ChangeLog AUTHORS
	dohtml -A .gif doc/html/*
}
