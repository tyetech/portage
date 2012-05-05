# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gmpc-albumview/Attic/gmpc-albumview-0.20.0.ebuild,v 1.3 2012/05/05 08:27:20 jdhore Exp $

EAPI=4

DESCRIPTION="This plugin shows your music collection in albums"
HOMEPAGE="http://gmpc.wikia.com/wiki/GMPC_PLUGIN_ALBUMVIEW"
SRC_URI="http://download.sarine.nl/Programs/gmpc/${PV}/${P}.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="nls"

RDEPEND=">=media-sound/gmpc-${PV}"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	nls? ( dev-util/intltool
		sys-devel/gettext )"

src_configure() {
	econf $(use_enable nls)
}

src_install() {
	default
	find "${ED}" -name "*.la" -delete || die
}
