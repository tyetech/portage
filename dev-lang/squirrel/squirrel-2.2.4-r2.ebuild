# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-lang/cvs-repo/gentoo-x86/dev-lang/squirrel/squirrel-2.2.4-r2.ebuild,v 1.1 2012/06/07 12:20:01 slyfox Exp $

EAPI=3

inherit autotools eutils multilib

MY_P="${PN}_${PV}_stable"
DESCRIPTION="A interpreted language mainly used for games"
HOMEPAGE="http://squirrel-lang.org/"
SRC_URI="mirror://sourceforge/${PN}/${PN}${PV:0:1}/${MY_P}/${MY_P}.tar.gz"

LICENSE="ZLIB"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc examples static-libs"

# /usr/bin/sq conflicts
RDEPEND="!app-text/ispell"

S="${WORKDIR}/SQUIRREL${PV:0:1}"

src_prepare() {
	epatch "${FILESDIR}"/${P}-autotools.patch
	epatch "${FILESDIR}"/${P}-supertux-const.patch
	epatch "${FILESDIR}"/${P}-stdint.h.patch
	epatch "${FILESDIR}"/${P}-gcc47.patch

	eautoreconf
}

src_configure() {
	econf --docdir="${EPREFIX}"/usr/share/doc/${PF} \
		$(use_enable doc) \
		$(use_enable examples) \
		$(use_enable static-libs static)
}

src_install() {
	emake DESTDIR="${D}" install || die
	if ! use static-libs; then
		rm -v "${ED}"/usr/$(get_libdir)/*.la || die
	fi

	dodoc HISTORY README || die
}
