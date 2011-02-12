# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/libpng/Attic/libpng-1.2.44.ebuild,v 1.7 2011/02/12 23:22:22 vapier Exp $

# this ebuild is only for the libpng12.so.0 SONAME for ABI compat

EAPI="3"

inherit multilib libtool

DESCRIPTION="Portable Network Graphics library"
HOMEPAGE="http://www.libpng.org/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.xz"

LICENSE="as-is"
SLOT="1.2"
KEYWORDS="~alpha amd64 ~arm hppa ~ia64 ~m68k ~mips ppc ppc64 ~s390 ~sh ~sparc x86 ~sparc-fbsd ~x86-fbsd"
IUSE=""

RDEPEND="sys-libs/zlib
	!=media-libs/libpng-1.2*:0"
DEPEND="${RDEPEND}
	app-arch/xz-utils"

pkg_setup() {
	if [[ -e ${ROOT}/usr/$(get_libdir)/libpng12.so.0 ]] ; then
		rm -f "${ROOT}"/usr/$(get_libdir)/libpng12.so.0
	fi
}

src_prepare() {
	elibtoolize
}

src_configure() {
	econf \
		--disable-dependency-tracking \
		--disable-static
}

src_compile() {
	emake libpng12.la || die
}

src_install() {
	newlib.so .libs/libpng12.so.0.* libpng12.so.0 || die
}
