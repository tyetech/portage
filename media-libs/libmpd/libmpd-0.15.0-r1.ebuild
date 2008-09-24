# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/libmpd/Attic/libmpd-0.15.0-r1.ebuild,v 1.2 2008/09/24 18:06:56 angelos Exp $

inherit eutils

DESCRIPTION="A library handling connection to a MPD server."
HOMEPAGE="http://sarine.nl/libmpd"
SRC_URI="http://download.sarine.nl/gmpc-0.15.5/${P}.tar.gz"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-libs/glib-2"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"

src_unpack() {
	unpack ${A}
	cd "${S}"

	epatch "${FILESDIR}/${P}-remove-new-parameter.patch"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed."
	dodoc AUTHORS ChangeLog NEWS README
}
