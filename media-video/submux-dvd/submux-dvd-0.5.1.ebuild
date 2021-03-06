# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-video/cvs-repo/gentoo-x86/media-video/submux-dvd/submux-dvd-0.5.1.ebuild,v 1.4 2012/03/11 19:08:16 lordvan Exp $

inherit eutils toolchain-funcs

DESCRIPTION="A subtitle multiplexer, muxes subtitles into .vob"
HOMEPAGE="http://panteltje.com/panteltje/dvd/"
SRC_URI="http://panteltje.com/panteltje/dvd/${P}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_compile() {
	emake CC="$(tc-getCC)" || die
}

src_install() {
	# just 2 files not worth a makefile patch
	dobin submux-dvd vob2sub || die
	dodoc CHANGES FORMAT README ${P}.lsm || die
	dohtml spu.html || die
}
