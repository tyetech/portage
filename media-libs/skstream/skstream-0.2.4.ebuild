# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/skstream/Attic/skstream-0.2.4.ebuild,v 1.10 2005/09/04 02:34:38 dragonheart Exp $

DESCRIPTION="FreeSockets - Portable C++ classes for IP (sockets) applications"
SRC_URI="ftp://victor.worldforge.org/pub/worldforge/libs/skstream/${P}.tar.gz"
HOMEPAGE="http://www.worldforge.org"

SLOT="0"
LICENSE="LGPL-2"
KEYWORDS="x86"
IUSE=""

DEPEND="virtual/libc"

src_install() {
	make DESTDIR="${D}" install || die

	dodoc AUTHORS ChangeLog NEWS README TODO
}
