# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-video/cvs-repo/gentoo-x86/media-video/sswf/Attic/sswf-1.7.1.ebuild,v 1.3 2005/03/23 14:33:10 blubb Exp $

inherit eutils

DESCRIPTION="A C++ Library and a script language tool to create Flash (SWF) movies up to version 6."
HOMEPAGE="http://sswf.sourceforge.net"
SRC_URI="mirror://sourceforge/${PN}/${P}-src.tar.bz2
	doc? ( mirror://sourceforge/${PN}/${P}-doc.tar.bz2 )"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~x86 ~ppc ~amd64"
IUSE="doc debug"
DEPEND="sys-libs/zlib
	media-libs/jpeg
	media-libs/freetype
	sys-devel/flex
	sys-devel/bison"

src_unpack() {
	unpack ${A}
	cd ${S}
	epatch ${FILESDIR}/bitsize.patch
	epatch ${FILESDIR}/sound_wave_t.patch
}

src_compile() {
	econf \
		$(use_enable debug) \
		|| die "Configuration Failed!"

	emake || die "Make Failed"
}

src_install () {
	make DESTDIR=${D} install || die
}
