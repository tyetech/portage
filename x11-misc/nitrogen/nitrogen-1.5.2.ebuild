# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/nitrogen/nitrogen-1.5.2.ebuild,v 1.3 2012/08/18 18:02:10 jer Exp $

EAPI=4
inherit autotools eutils

DESCRIPTION="A background browser and setter for X"
HOMEPAGE="http://projects.l3ib.org/nitrogen/"
SRC_URI="http://projects.l3ib.org/${PN}/files/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="nls xinerama"

RDEPEND=">=dev-cpp/gtkmm-2.10:2.4
	>=gnome-base/librsvg-2.20:2
	>=x11-libs/gtk+-2.10:2
	xinerama? ( x11-libs/libXinerama )"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	nls? ( sys-devel/gettext )
	xinerama? ( x11-proto/xineramaproto )"

src_prepare() {
	epatch "${FILESDIR}"/${P}-gold.patch
	eautoreconf
}

src_configure() {
	econf \
		--disable-dependency-tracking \
		$(use_enable nls) \
		$(use_enable xinerama)
}

DOCS=( AUTHORS ChangeLog NEWS README )
