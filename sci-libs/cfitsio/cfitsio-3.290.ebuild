# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-libs/cvs-repo/gentoo-x86/sci-libs/cfitsio/cfitsio-3.290.ebuild,v 1.1 2012/04/03 16:54:07 bicatali Exp $

EAPI=4
inherit autotools-utils

DESCRIPTION="C and Fortran library for manipulating FITS files"
HOMEPAGE="http://heasarc.gsfc.nasa.gov/docs/software/fitsio/fitsio.html"
SRC_URI="http://dev.gentoo.org/~bicatali/distfiles/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ppc ~ppc64 ~sparc ~x86 ~x64-freebsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~sparc64-solaris"
IUSE="doc fortran static-libs +tools threads"

RDEPEND="sys-libs/zlib"
DEPEND="${RDEPEND}
	fortran? ( dev-lang/cfortran )"

src_prepare() {
	# avoid internal cfortran
	if use fortran; then
		mv cfortran.h cfortran.h.disabled
		ln -s "${EPREFIX}"/usr/include/cfortran.h .
	fi
	autotools-utils_src_prepare
}

src_configure() {
	myeconfargs=(
		$(use_enable fortran)
		$(use_enable threads)
		$(use_enable tools)
	)
	autotools-utils_src_configure
}

src_install () {
	dodoc changes.txt README cfitsio.doc
	insinto /usr/share/doc/${PF}/examples
	doins cookbook.c testprog.c speed.c smem.c
	use fortran && doins cookbook.f testf77.f && dodoc fitsio.doc
	use doc && dodoc quick.pdf cfitsio.pdf fpackguide.pdf
	use doc && use fortran && dodoc fitsio.pdf
	autotools-utils_src_install
}
