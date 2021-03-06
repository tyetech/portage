# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-gfx/cvs-repo/gentoo-x86/media-gfx/opencolorio/opencolorio-1.0.7.ebuild,v 1.1 2012/09/03 08:32:34 pinkbyte Exp $

EAPI=4

PYTHON_DEPEND="python? 2"

inherit cmake-utils python vcs-snapshot

DESCRIPTION="A color management framework for visual effects and animation"
HOMEPAGE="http://opencolorio.org/"
SRC_URI="https://github.com/imageworks/OpenColorIO/tarball/v${PV} \
		-> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc opengl python sse2 test"

RDEPEND="opengl? (
		media-libs/lcms:2
		media-libs/openimageio
		media-libs/glew
		media-libs/freeglut
		virtual/opengl
		)
	dev-cpp/yaml-cpp
	dev-libs/tinyxml
	"
DEPEND="${RDEPEND}
	doc? ( dev-python/sphinx )
	"

# Documentation building requires Python bindings building
REQUIRED_USE="doc? ( python )"

pkg_setup() {
	if use python; then
		python_set_active_version 2
		python_pkg_setup
	fi
}

src_prepare() {
	epatch "${FILESDIR}"/"${PN}"-use-system-libs.patch
	epatch "${FILESDIR}"/"${PN}"-documentation-gen.patch
}

src_configure() {
	# Missing features:
	# - Truelight and Nuke are not in portage for now, so their support are disabled
	# - Java bindings was not tested, so disabled
	# - Documentation PDF does not build properly ("automagic dependency on pdflatex")
	# Notes:
	# - OpenImageIO is required for building ociodisplay and ocioconvert (USE opengl)
	# - OpenGL, GLUT and GLEW is required for building ociodisplay (USE opengl)
	local mycmakeargs=(
		-DOCIO_BUILD_JNIGLUE=OFF
		-DOCIO_BUILD_NUKE=OFF
		-DOCIO_BUILD_SHARED=ON
		-DOCIO_BUILD_STATIC=OFF
		-DOCIO_STATIC_JNIGLUE=OFF
		-DOCIO_BUILD_TRUELIGHT=OFF
		$(cmake-utils_use doc OCIO_BUILD_DOCS)
		$(cmake-utils_use opengl OCIO_BUILD_APPS)
		$(cmake-utils_use python OCIO_BUILD_PYGLUE)
		$(cmake-utils_use sse2 OCIO_USE_SSE)
		$(cmake-utils_use test OCIO_BUILD_TESTS)
	)
	cmake-utils_src_configure
}
