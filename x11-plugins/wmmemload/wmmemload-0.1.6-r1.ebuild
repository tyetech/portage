# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-plugins/cvs-repo/gentoo-x86/x11-plugins/wmmemload/wmmemload-0.1.6-r1.ebuild,v 1.1 2012/01/04 14:29:17 s4t4n Exp $

EAPI=4
inherit autotools eutils

DESCRIPTION="dockapp that displays memory and swap space usage."
HOMEPAGE="http://www.markstaggs.net/wmmemload"
SRC_URI="http://markstaggs.net/${PN}-download/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND="x11-libs/libX11
	x11-libs/libXext
	x11-libs/libXpm"
DEPEND="${RDEPEND}
	x11-proto/xextproto
	x11-libs/libICE
	x11-libs/libXt"

src_prepare() {
	epatch "${FILESDIR}"/${PN}-kernel-3-support.patch
	eautoreconf
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed."
	dodoc AUTHORS ChangeLog THANKS
}
