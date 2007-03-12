# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/gtick/Attic/gtick-0.3.4.ebuild,v 1.4 2007/03/12 20:42:18 armin76 Exp $

IUSE=""

DESCRIPTION="a metronome application supporting different meters and speeds ranging"
HOMEPAGE="http://www.antcom.de/gtick/"
SRC_URI="http://www.antcom.de/gtick/download/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~ppc ~sparc x86"

RDEPEND=">=x11-libs/gtk+-2.0"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"

src_install() {
	make DESTDIR=${D} install || die
	dodoc AUTHORS ChangeLog NEWS README THANKS TODO
}
