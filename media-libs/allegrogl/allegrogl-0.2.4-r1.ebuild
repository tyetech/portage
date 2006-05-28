# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/allegrogl/Attic/allegrogl-0.2.4-r1.ebuild,v 1.3 2006/05/28 21:41:56 tupone Exp $

inherit eutils

MY_PN="alleggl"
DESCRIPTION="A library to mix OpenGL graphics with Allegro routines"
HOMEPAGE="http://allegrogl.sourceforge.net"
SRC_URI="mirror://sourceforge/allegrogl/${MY_PN}-${PV}.tar.gz"

LICENSE="ZLIB"
SLOT="0"
KEYWORDS="~amd64 ~sparc x86"
IUSE="doc"

DEPEND=">=media-libs/allegro-4.0.0"

S=${WORKDIR}/${MY_PN}

src_unpack() {
	unpack ${A}

	cd "${S}"
	epatch \
		"${FILESDIR}"/${P}-destdir.patch \
		"${FILESDIR}"/${P}-noasm.patch \
		"${FILESDIR}"/${P}-agl_write_line_c.patch \
		"${FILESDIR}/${P}"-gcc41.patch
}

src_compile() {
	econf || die
	emake -j1 || die "emake failed"
}

src_install() {
	make DESTDIR="${D}" install || die "make install failed"
	dodoc *txt
	use doc && dodoc examp/*
}
