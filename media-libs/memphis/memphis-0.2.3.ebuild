# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/memphis/memphis-0.2.3.ebuild,v 1.11 2012/07/09 14:06:28 ranger Exp $

EAPI=4

WANT_AUTOMAKE=1.11

AUTOTOOLS_AUTORECONF=1

inherit autotools-utils

DESCRIPTION="A map-rendering application and a library for OpenStreetMap"
HOMEPAGE="http://trac.openstreetmap.ch/trac/memphis/"
SRC_URI="http://wenner.ch/files/public/mirror/${PN}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0.2"
KEYWORDS="amd64 ~ppc x86"
IUSE="debug doc +introspection vala static-libs"

RDEPEND="
	dev-libs/expat
	dev-libs/glib:2
	x11-libs/cairo
	introspection? ( dev-libs/gobject-introspection )
	vala? ( dev-lang/vala:0.12 )"
DEPEND="${RDEPEND}
	dev-util/gtk-doc"

AUTOTOOLS_IN_SOURCE_BUILD=1

DOCS=(AUTHORS ChangeLog NEWS README)

PATCHES=( "${FILESDIR}"/${P}-link_gobject.patch )

src_configure() {
	unset VALAC
	use vala && export VALAC=$(type -p valac-0.12)

	local myeconfargs=(
		$(use_enable debug)
		$(use_enable doc gtk-doc)
		$(use_enable introspection)
		$(use_enable vala)
	)
	CFLAGS="${CFLAGS}" \
		autotools-utils_src_configure
}
