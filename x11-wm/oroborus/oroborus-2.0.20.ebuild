# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-wm/cvs-repo/gentoo-x86/x11-wm/oroborus/oroborus-2.0.20.ebuild,v 1.6 2012/06/04 19:32:32 xmw Exp $

EAPI=4

DESCRIPTION="Small and fast window manager."
HOMEPAGE="http://www.oroborus.org"
SRC_URI="mirror://debian/pool/main/o/${PN}/${PN}_${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc x86"
IUSE="gnome"

RDEPEND="x11-libs/libXpm
	x11-libs/libXext
	x11-libs/libSM
	x11-libs/libICE
	x11-libs/libX11"
DEPEND="${RDEPEND}
	x11-proto/xproto
	x11-proto/xextproto"

src_configure() {
	econf --disable-dependency-tracking
}

src_install () {
	emake DESTDIR="${D}" install

	if use gnome; then
		insinto /usr/share/gnome/wm-properties
		doins "${FILESDIR}"/${PN}.desktop
	fi

	dodoc AUTHORS ChangeLog example.${PN}rc README TODO
}
