# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/granatier/Attic/granatier-4.6.1.ebuild,v 1.1 2011/03/04 18:00:17 alexxy Exp $

EAPI=3

KDE_HANDBOOK="optional"
KMNAME="kdegames"
inherit kde4-meta

DESCRIPTION="KDE Bomberman game"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86 ~amd64-linux ~x86-linux"
IUSE="debug openal"

DEPEND="
	openal? (
		media-libs/libsndfile
		media-libs/openal
	)
"
RDEPEND="${DEPEND}"

src_configure() {
	mycmakeargs=(
		$(cmake-utils_use_with openal OpenAL)
		$(cmake-utils_use_with openal SndFile)
	)

	kde4-meta_src_configure
}
