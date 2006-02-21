# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/xmms-infinity/Attic/xmms-infinity-0.6.2.ebuild,v 1.1 2006/02/21 00:17:10 metalgod Exp $

IUSE=""

DESCRIPTION="A psychedelic visualization plug-in for XMMS"
HOMEPAGE="http://infinity-plugin.sourceforge.net"
SRC_URI="mirror://sourceforge/infinity-plugin/${P}.tar.bz2"

SLOT="0"
LICENSE="GPL-2"
#-sparc: 0.2: always black - eradicator
KEYWORDS="~amd64 ~ppc -sparc ~x86"

DEPEND="media-libs/libsdl
	media-sound/xmms"

src_install () {
	make DESTDIR="${D}" install || die "install failed"

	dodoc AUTHORS ChangeLog README
}
