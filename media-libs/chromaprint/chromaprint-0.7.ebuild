# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/chromaprint/chromaprint-0.7.ebuild,v 1.1 2012/09/21 04:51:13 radhermit Exp $

EAPI=4
inherit cmake-utils

DESCRIPTION="A client-side library that implements a custom algorithm for extracting fingerprints"
HOMEPAGE="http://acoustid.org/chromaprint"
SRC_URI="mirror://github/lalinsky/${PN}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test tools"

# note: use ffmpeg instead of fftw because it's recommended and required for tools
RDEPEND=">=virtual/ffmpeg-0.6
	tools? ( >=media-libs/taglib-1.6 )"
DEPEND="${RDEPEND}
	test? (
		dev-cpp/gtest
		dev-libs/boost
	)
	tools? ( dev-libs/boost )"

DOCS="NEWS.txt README.txt"

PATCHES=( "${FILESDIR}"/${P}-boost.patch )

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_build tools EXAMPLES)
		$(cmake-utils_use_build test TESTS)
		$(cmake-utils_use_build tools)
		-DWITH_AVFFT=ON
		)

	cmake-utils_src_configure
}

src_test() {
	cd "${CMAKE_BUILD_DIR}" || die
	emake check
}

src_install() {
	cmake-utils_src_install
	use tools && dobin "${CMAKE_BUILD_DIR}"/tools/fpcollect
}
