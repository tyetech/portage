# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/squelch/Attic/squelch-1.0.1.ebuild,v 1.7 2004/04/20 17:36:52 eradicator Exp $

IUSE=""

DESCRIPTION="qt-based Ogg Vorbis player"
HOMEPAGE="http://rikkus.info/squelch.html"
SRC_URI="http://rikkus.info/arch/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="x86"

DEPEND="media-libs/libvorbis
	media-libs/libao
	>=x11-libs/qt-3"

src_compile() {
	./configure --prefix=/usr
	make || die "Make failed"
}

src_install() {
	dobin src/squelch
	dodoc AUTHORS COPYING INSTALL README THANKS
}
