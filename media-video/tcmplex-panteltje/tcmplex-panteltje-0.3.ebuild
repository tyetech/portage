# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-video/cvs-repo/gentoo-x86/media-video/tcmplex-panteltje/Attic/tcmplex-panteltje-0.3.ebuild,v 1.4 2004/06/25 00:50:41 agriffis Exp $

inherit eutils

DESCRIPTION="audio video multiplexer for 8 audio channels"
HOMEPAGE="http://home.zonnet.nl/panteltje/dvd/"
SRC_URI="http://home.zonnet.nl/panteltje/dvd/${P}.tgz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~ppc"
IUSE=""
DEPEND=""

src_unpack() {
	unpack ${A}
	# fix multiline string 
	cd ${S}; epatch ${FILESDIR}/${P}.patch
}

src_compile() {
	emake CFLAGS="$CFLAGS -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64" || \
	    die "emake failed"
}

src_install() {
	dobin tcmplex-panteltje
	dodoc CHANGES COPYRIGHT LICENSE README
}
