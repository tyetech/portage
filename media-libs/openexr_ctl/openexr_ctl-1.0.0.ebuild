# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/openexr_ctl/Attic/openexr_ctl-1.0.0.ebuild,v 1.3 2007/09/23 14:19:16 nixnut Exp $

DESCRIPTION="OpenEXR CTL libraries"
HOMEPAGE="http://sourceforge.net/projects/ampasctl"
SRC_URI="mirror://sourceforge/ampasctl/${P}.tar.gz"

LICENSE="AMPAS"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~ppc ~x86"
IUSE=""

RDEPEND="media-libs/ilmbase
	media-libs/openexr
	media-libs/ctl"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"

src_install() {
	emake DESTDIR="${D}" install || die "install failed"
	dodoc AUTHORS ChangeLog NEWS README
}
