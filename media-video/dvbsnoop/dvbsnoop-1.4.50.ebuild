# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-video/cvs-repo/gentoo-x86/media-video/dvbsnoop/dvbsnoop-1.4.50.ebuild,v 1.4 2012/02/15 18:17:38 hd_brummy Exp $

DESCRIPTION="DVB/MPEG stream analyzer program"
SRC_URI="mirror://sourceforge/dvbsnoop/${P}.tar.gz"
HOMEPAGE="http://dvbsnoop.sourceforge.net/"
LICENSE="GPL-2"
KEYWORDS="amd64 ~ppc x86"
DEPEND="virtual/linuxtv-dvb-headers"

RDEPEND=""
SLOT="0"
IUSE=""

src_install () {
	emake DESTDIR="${D}" install || die "emake install failed"

	dodoc AUTHORS ChangeLog README
}
