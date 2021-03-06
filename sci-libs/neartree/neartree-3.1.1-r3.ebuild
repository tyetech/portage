# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-libs/cvs-repo/gentoo-x86/sci-libs/neartree/neartree-3.1.1-r3.ebuild,v 1.1 2012/06/17 19:24:38 jlec Exp $

EAPI=4

inherit cmake-utils

MY_PN=NearTree
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Function library efficiently solving the Nearest Neighbor Problem(known as the post office problem)"
HOMEPAGE="http://neartree.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${PN}/${MY_P}/${MY_P}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86 ~amd64-linux ~x86-linux"
IUSE="static-libs"

RDEPEND="dev-libs/cvector"
DEPEND="${RDEPEND}"

S="${WORKDIR}"/${MY_P}

src_prepare() {
	cp "${FILESDIR}"/CMakeLists.txt . || die
}

src_configure() {
	local mycmakeargs=( -DDOC_DIR="${EPREFIX}/usr/share/doc/${PF}" )
	cmake-utils_src_configure
}
