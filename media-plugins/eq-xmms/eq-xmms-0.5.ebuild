# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/eq-xmms/Attic/eq-xmms-0.5.ebuild,v 1.3 2004/06/18 05:56:18 eradicator Exp $

IUSE=""

DESCRIPTION="EQU is a realtime graphical equalizer effect plugin that will equalize almost everything that you play through XMMS, not just the MP3s"
HOMEPAGE="http://equ.sourceforge.net/"
SRC_URI="mirror://sourceforge/equ/${P}.tar.gz"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86 ~amd64"

DEPEND="media-sound/xmms"

src_install() {
	make DESTDIR=${D} install || die

	dodoc AUTHORS BUGS COPYING ChangeLog INSTALL NEWS README README.BSD SKINS TODO
}
