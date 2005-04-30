# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-video/cvs-repo/gentoo-x86/media-video/motion/Attic/motion-3.1.19.ebuild,v 1.3 2005/04/30 09:29:01 kloeri Exp $

DESCRIPTION="Motion is a video surveillance system"
HOMEPAGE="http://www.lavrsen.dk/twiki/bin/view/Motion/WebHome"
SRC_URI="mirror://sourceforge/motion/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~ppc ~alpha"
IUSE=""

DEPEND="media-video/ffmpeg
		dev-libs/xmlrpc-c"

src_install() {
	make install DESTDIR=${D} || die
}
