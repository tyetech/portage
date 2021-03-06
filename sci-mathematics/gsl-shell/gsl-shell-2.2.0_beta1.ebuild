# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-mathematics/cvs-repo/gentoo-x86/sci-mathematics/gsl-shell/gsl-shell-2.2.0_beta1.ebuild,v 1.5 2012/09/26 14:50:50 grozin Exp $

EAPI=4
inherit eutils versionator

DESCRIPTION="Lua interactive shell for sci-libs/gsl"
HOMEPAGE="http://www.nongnu.org/gsl-shell/"
MY_P=$(version_format_string '${PN}-$1.$2.$3-$4')
SRC_URI="http://download.savannah.gnu.org/releases/${PN}/${MY_P}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86"
IUSE="doc fox"

DEPEND=">=sci-libs/gsl-1.14
	virtual/blas
	>=x11-libs/agg-2.5
	>=media-libs/freetype-2.4.10
	sys-libs/readline
	|| ( media-fonts/ubuntu-font-family media-fonts/freefont-ttf media-fonts/dejavu )
	doc? ( dev-python/sphinx[latex] )
	fox? ( x11-libs/fox:1.6 )"
RDEPEND="${DEPEND}"

S="${WORKDIR}"

src_prepare() {
	epatch "${FILESDIR}"/${PN}-font.patch "${FILESDIR}"/${PN}-strip.patch "${FILESDIR}"/${PN}-usr.patch
	use fox || epatch "${FILESDIR}"/${PN}-nogui.patch
}

src_compile() {
	local BLAS=`pkg-config --libs blas`

	if use fox; then
		local FOX_INCLUDES=`WANT_FOX=1.6 fox-config --cflags`
		local FOX_LIBS=`WANT_FOX=1.6 fox-config --libs`
		emake -j1 CFLAGS="${CFLAGS}" GSL_LIBS="-lgsl ${BLAS}" \
			FOX_INCLUDES="${FOX_INCLUDES}" FOX_LIBS="${FOX_LIBS}"
	else
		emake -j1 CFLAGS="${CFLAGS}" GSL_LIBS="-lgsl ${BLAS}"
	fi

	if use doc; then
		pushd doc/user-manual > /dev/null
		emake -j1 html
		popd > /dev/null
	fi
}

src_install() {
	default
	use doc && dohtml -r doc/user-manual/_build/html/*
}
