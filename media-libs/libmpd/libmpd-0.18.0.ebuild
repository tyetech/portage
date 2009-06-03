# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/libmpd/Attic/libmpd-0.18.0.ebuild,v 1.2 2009/06/03 14:06:15 fmccor Exp $

EAPI=1

DESCRIPTION="A library handling connections to a MPD server"
HOMEPAGE="http://gmpcwiki.sarine.nl/index.php/Libmpd"
SRC_URI="mirror://sourceforge/musicpd/${P}.tar.gz"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 sparc ~x86"
IUSE=""

RDEPEND=">=dev-libs/glib-2.16:2"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed."
	dodoc AUTHORS ChangeLog NEWS README
}
