# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-libs/cvs-repo/gentoo-x86/x11-libs/libaosd/libaosd-0.2.7.ebuild,v 1.1 2011/01/15 19:43:53 mgorny Exp $

EAPI=3
inherit autotools-utils

DESCRIPTION="An advanced on screen display (OSD) library"
HOMEPAGE="http://www.atheme.org/project/libaosd"
SRC_URI="http://distfiles.atheme.org/${P}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="pango +tools xcomposite"

RDEPEND="x11-libs/cairo
	x11-libs/libX11
	x11-libs/libXrender
	pango? ( x11-libs/pango )
	tools? ( dev-libs/glib:2 )
	xcomposite? ( x11-libs/libXcomposite )"
DEPEND="${RDEPEND}"

AUTOTOOLS_IN_SOURCE_BUILD=1
DOCS=( Changelog )

src_configure() {
	myeconfargs=(
		$(use_enable tools glib)
		$(use_enable pango pangocairo)
		$(use_enable xcomposite)
	)

	autotools-utils_src_configure
}
