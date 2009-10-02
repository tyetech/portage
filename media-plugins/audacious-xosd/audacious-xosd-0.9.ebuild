# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/audacious-xosd/Attic/audacious-xosd-0.9.ebuild,v 1.5 2009/10/02 22:56:31 maekke Exp $

DESCRIPTION="Audacious plugin for overlaying text/glyphs in X-On-Screen-Display"
HOMEPAGE="http://www.netswarm.net/"
SRC_URI="http://www.netswarm.net/misc/${P}.tar.gz"

IUSE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~ppc ~ppc64 ~sparc x86"

RDEPEND="x11-libs/xosd
	>=media-sound/audacious-1.4"

DEPEND="dev-util/pkgconfig
	${RDEPEND}"

src_compile() {
	emake PREFIX=/usr || die "emake failed"
}

src_install() {
	make PREFIX=/usr DESTDIR="${D}" install || die "make install failed"
	dodoc README
}
