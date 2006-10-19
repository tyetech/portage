# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/flac123/Attic/flac123-0.0.8.ebuild,v 1.6 2006/10/19 20:26:28 flameeyes Exp $

DESCRIPTION="flac-tools provides flac123 a console app for playing FLAC audio files."
HOMEPAGE="http://flac-tools.sourceforge.net"
SRC_URI="mirror://sourceforge/flac-tools/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~ppc ppc64 sparc x86"
IUSE=""

DEPEND="~media-libs/flac-1.1.2
	media-libs/libao"

src_install() {
	make DESTDIR="${D}" install || die "make install failed"
	dodoc AUTHORS BUGS NEWS README* TODO
}
