# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-libs/cvs-repo/gentoo-x86/sci-libs/arpack/arpack-3.1.2.ebuild,v 1.1 2012/09/05 19:54:42 jlec Exp $

EAPI=4

AUTOTOOLS_AUTORECONF=true

inherit autotools-utils eutils flag-o-matic fortran-2 toolchain-funcs

DESCRIPTION="Arnoldi package library to solve large scale eigenvalue problems"
HOMEPAGE="http://www.caam.rice.edu/software/ARPACK/"
SRC_URI="
	http://forge.scilab.org/upload/arpack-ng/files/${PN}-ng_${PV}.tar.gz
	doc? (
		http://www.caam.rice.edu/software/ARPACK/SRC/ug.ps.gz
		http://www.caam.rice.edu/software/ARPACK/DOCS/tutorial.ps.gz )"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ppc ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos"
IUSE="doc examples mpi static-libs"

RDEPEND="
	virtual/fortran
	virtual/blas
	virtual/lapack
	mpi? ( virtual/mpi[fortran] )"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

S="${WORKDIR}/${PN}-ng_${PV}"

PATCHES=( "${FILESDIR}"/${P}-test.patch )

src_configure() {
	local myeconfargs=(
		--with-blas="$(pkg-config --libs blas)"
		--with-lapack="$(pkg-config --libs lapack)"
		$(use_enable mpi)
		)
	autotools-utils_src_configure
}

src_test() {
	default
	pushd EXAMPLES/SIMPLE
	touch ../../ARmake.inc
	emake simple FC=$(tc-getFC) LDFLAGS="${LDFLAGS} -L${AUTOTOOLS_BUILD_DIR}/.libs"
	local prog=
	for p in ss ds sn dn cn zn; do
		prog=${p}simp
		LD_LIBRARY_PATH="${AUTOTOOLS_BUILD_DIR}/.libs" ./${prog} \
			|| die "${prog} test failed"
		rm -f ${prog} *.o || die
	done
	popd

	if use mpi; then
		pushd "${AUTOTOOLS_BUILD_DIR}"/PARPACK/EXAMPLES/MPI
		emake \
			FC=mpif77 \
			LDFLAGS="${LDFLAGS} -L${AUTOTOOLS_BUILD_DIR}/.libs -L${AUTOTOOLS_BUILD_DIR}/PARPACK/.libs ${LIBS}"
		for p in 1 3; do
			prog=pdndrv${p}
			LD_LIBRARY_PATH="${AUTOTOOLS_BUILD_DIR}/.libs:${AUTOTOOLS_BUILD_DIR}/PARPACK/.libs" \
				./${prog} || die "${prog} test failed"
			rm -f ${prog} *.o || die
		done
		popd
	fi
}

src_install() {
	autotools-utils_src_install

	dodoc DOCUMENTS/*.doc
	newdoc DOCUMENTS/README README.doc
	use doc && dodoc "${WORKDIR}"/*.ps
	if use examples; then
		insinto /usr/share/doc/${PF}
		doins -r EXAMPLES
		if use mpi; then
			insinto /usr/share/doc/${PF}/EXAMPLES/PARPACK
			doins -r PARPACK/EXAMPLES/MPI
		fi
	fi
}
