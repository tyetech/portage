# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kate/Attic/kate-4.0.1.ebuild,v 1.3 2008/03/04 02:22:19 jer Exp $

EAPI="1"

KMNAME=kdesdk
inherit kde4-meta

DESCRIPTION="Kate is an MDI texteditor."
KEYWORDS="~amd64 ~hppa ~x86"
IUSE="debug htmlhandbook"

DEPEND="${DEPEND}
	>=kde-base/plasma-${PV}:${SLOT}"
RDEPEND="${DEPEND}
	dev-libs/libxml2
	dev-libs/libxslt"

src_unpack() {
	use htmlhandbook && KMEXTRA="doc/kate-plugins"
	kde4-meta_src_unpack
}
