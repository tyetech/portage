# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/libsmf/libsmf-1.3.ebuild,v 1.5 2012/10/12 22:51:01 blueness Exp $

EAPI=4

inherit autotools-utils

DESCRIPTION="Standard MIDI File format library"
HOMEPAGE="http://libsmf.sourceforge.net/api/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="doc readline static-libs"

RDEPEND=">=dev-libs/glib-2.2:2
	readline? ( sys-libs/readline )"
DEPEND="${RDEPEND}
	doc? ( app-doc/doxygen )
	virtual/pkgconfig"

DOCS=( NEWS TODO )

src_configure() {
	local myeconfargs=(
		$(use_with readline)
	)
	autotools-utils_src_configure
}

src_compile() {
	autotools-utils_src_compile

	if use doc ; then
		doxygen doxygen.cfg || die
	fi
}

src_install() {
	autotools-utils_src_install
	use doc && dohtml -r api
}
