# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/extace/Attic/extace-1.8.11.ebuild,v 1.8 2004/08/05 19:38:26 eradicator Exp $

IUSE=""

DESCRIPTION="eXtace is an ESD audio visualization application"
HOMEPAGE="http://extace.sourceforge.net"
SRC_URI="mirror://sourceforge/extace/extace-1.8.11.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 ~sparc ~amd64"

DEPEND="media-sound/esound
	=dev-libs/fftw-2*"

src_install() {
	make DESTDIR="${D}" install || die
	dodoc AUTHORS CREDITS ChangeLog NEWS README TODO
}
