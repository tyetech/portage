# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/libkcddb/Attic/libkcddb-4.2.0.ebuild,v 1.2 2009/02/01 08:17:54 jmbsvicetto Exp $

EAPI="2"

KMNAME="kdemultimedia"
inherit kde4-meta

DESCRIPTION="KDE library for CDDB"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE="debug htmlhandbook musicbrainz"

DEPEND="${DEPEND}
	musicbrainz? ( media-libs/musicbrainz:1 )"
RDEPEND="${DEPEND}"

KMSAVELIBS="true"

src_configure() {
	mycmakeargs="${mycmakeargs}
		$(cmake-utils_use_with musicbrainz MusicBrainz)"
	kde4-meta_src_configure
}
