# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/libkcddb/Attic/libkcddb-4.0.5.ebuild,v 1.1 2008/06/05 22:35:51 keytoaster Exp $

EAPI="1"

KMNAME=kdemultimedia
inherit kde4-meta

DESCRIPTION="KDE library for CDDB"
KEYWORDS="~amd64 ~x86"
IUSE="debug htmlhandbook musicbrainz"

# Tests are broken. Last checked on 4.0.3.
RESTRICT="test"

DEPEND="${DEPEND}
	musicbrainz? ( media-libs/musicbrainz )"
RDEPEND="${DEPEND}"

src_compile() {
	mycmakeargs="${mycmakeargs}
		$(cmake-utils_use_enable musicbrainz MusicBrainz)"
	kde4-meta_src_compile
}
