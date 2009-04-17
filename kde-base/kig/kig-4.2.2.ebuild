# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kig/Attic/kig-4.2.2.ebuild,v 1.2 2009/04/17 06:18:41 alexxy Exp $

EAPI="2"

KMNAME="kdeedu"
inherit kde4-meta

DESCRIPTION="KDE Interactive Geometry tool"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~x86"
IUSE="debug doc kig-scripting"

DEPEND="
	kig-scripting? ( >=dev-libs/boost-1.32 )
"
RDEPEND="${DEPEND}"

src_configure() {
	mycmakeargs="${mycmakeargs}
		$(cmake-utils_use_with kig-scripting BoostPython)"

	kde4-meta_src_configure
}
