# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-mathematics/cvs-repo/gentoo-x86/sci-mathematics/freemat/freemat-4.1.ebuild,v 1.3 2012/05/04 07:46:50 jdhore Exp $

EAPI=4
inherit eutils cmake-utils fdo-mime python

RESTRICT_PYTHON_ABIS="2.4 2.5"
MY_PN=FreeMat
MY_P=${MY_PN}-${PV}

DESCRIPTION="Environment for rapid engineering and scientific processing"
HOMEPAGE="http://freemat.sourceforge.net/"
SRC_URI="mirror://sourceforge/freemat/${MY_P}-Source.tar.gz"

IUSE="volpack vtk"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-libs/libpcre
	media-libs/portaudio
	sci-libs/arpack
	sci-libs/fftw:3.0
	sci-libs/matio
	sci-libs/umfpack
	sys-libs/ncurses
	virtual/glu
	virtual/lapack
	virtual/libffi
	virtual/opengl
	x11-libs/qt-gui:4
	x11-libs/qt-opengl:4
	x11-libs/qt-svg:4
	volpack? ( media-libs/volpack )
	vtk? ( sci-libs/vtk )"

DEPEND="${RDEPEND}
	dev-lang/python
	virtual/pkgconfig"

S="${WORKDIR}/${MY_P}-Source"

src_prepare(){
	epatch \
		"${FILESDIR}"/${P}-fixes.patch \
		"${FILESDIR}"/${P}-have_fftw.patch \
		"${FILESDIR}"/${P}-local_libffi.patch \
		"${FILESDIR}"/${P}-portaudio.patch \
		"${FILESDIR}"/${P}-use_llvm.patch \
		"${FILESDIR}"/${P}-python3.patch
	rm -f CMakeCache.txt
	find . -type f -name '*.moc.cpp' -exec rm -f {} \;
	find . -type f -name 'add.so' -exec rm -f {} \;
}

src_configure() {
	mycmakeargs+=(
		-DUSE_LLVM=OFF
		-DUSE_ITK=OFF
		-DFORCE_BUNDLED_PCRE=OFF
		-DFORCE_BUNDLED_UMFPACK=OFF
		-DFORCE_BUNDLED_PORTAUDIO=OFF
		-DFORCE_BUNDLED_ZLIB=OFF
		-DFORCE_BUNDLED_AMD=OFF
		-DFFI_INCLUDE_DIR="$(pkg-config --cflags-only-I libffi | sed -e s/-I//)"
		$(cmake-utils_use_with volpack VOLPACK)
		$(cmake-utils_use_with vtk VTK)
	)
	cmake-utils_src_configure
}

src_install() {
	cmake-utils_src_install -j1
	dodoc ChangeLog
	newicon images/freemat_small_mod_64.png ${PN}.png
	make_desktop_entry FreeMat FreeMat
}

pkg_postinst() {
	fdo-mime_desktop_database_update
	elog "Before using ${MY_PN}, do (as a normal user)"
	elog "FreeMat -i ${EROOT}usr/share/${MY_P}"
	elog "Then start ${MY_PN}, choose Tools -> Path Tool,"
	elog "select ${EROOT}usr/share/${MY_P}/toolbox and Add With Subfolders"
}

pkg_postrm() {
	fdo-mime_desktop_database_update
}
