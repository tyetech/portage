# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-gfx/cvs-repo/gentoo-x86/media-gfx/enblend/Attic/enblend-2.3.ebuild,v 1.3 2005/11/06 03:23:51 metalgod Exp $

DESCRIPTION="Image Blending with Multiresolution Splines"
HOMEPAGE="http://enblend.sf.net"
SRC_URI="mirror://sourceforge/enblend/${P}.tar.gz"
LICENSE="GPL-2 VIGRA"
SLOT="0"
KEYWORDS="amd64 ~ppc x86"
IUSE=""

DEPEND="media-libs/tiff
		>=dev-libs/boost-1.31.0"

src_install() {
	make DESTDIR=${D} install || die
	dodoc AUTHORS COPYING ChangeLog INSTALL NEWS README TODO VIGRA_LICENSE
}
