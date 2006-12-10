# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-editors/cvs-repo/gentoo-x86/app-editors/geresh/Attic/geresh-0.4.1.ebuild,v 1.9 2006/12/10 13:55:11 dirtyepic Exp $

inherit eutils

DESCRIPTION="A simple multi-lingual console text editor with bidi & utf support"
HOMEPAGE="http://www.typo.co.il/~mooffie/geresh/"
SRC_URI="http://www.typo.co.il/~mooffie/geresh/download/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~ppc x86"
IUSE="spell nls"

DEPEND="dev-libs/fribidi
	sys-libs/ncurses
	spell? (
		nls? ( >=app-text/hspell-0.5 )
		virtual/aspell-dict
	)"

src_unpack() {
	unpack ${A}
	cd "${S}"

	# Bug #149758
	epatch "${FILESDIR}"/${P}-gcc4.patch
}

src_install() {
	make install DESTDIR="${D}" || die
}
