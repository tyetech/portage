# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/libass/libass-0.10.0.ebuild,v 1.3 2012/05/15 13:02:07 aballier Exp $

EAPI=4

DESCRIPTION="Library for SSA/ASS subtitles rendering"
HOMEPAGE="http://code.google.com/p/libass/"
SRC_URI="http://libass.googlecode.com/files/${P}.tar.xz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~amd64-fbsd ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~x86-solaris"
IUSE="+enca +fontconfig harfbuzz static-libs"

RDEPEND="fontconfig? ( >=media-libs/fontconfig-2.4.2 )
	>=media-libs/freetype-2.2.1:2
	virtual/libiconv
	>=dev-libs/fribidi-0.19.0
	harfbuzz? ( media-libs/harfbuzz )
	enca? ( app-i18n/enca )"

DEPEND="${RDEPEND}
	virtual/pkgconfig"

DOCS="Changelog"

src_configure() {
	econf \
		$(use_enable enca) \
		$(use_enable fontconfig) \
		$(use_enable harfbuzz) \
		$(use_enable static-libs static)
}

src_install() {
	default

	find "${ED}" -name '*.la' -delete
}
