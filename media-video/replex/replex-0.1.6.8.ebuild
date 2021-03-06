# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-video/cvs-repo/gentoo-x86/media-video/replex/replex-0.1.6.8.ebuild,v 1.1 2008/01/13 18:20:15 aballier Exp $

inherit eutils toolchain-funcs

DESCRIPTION="REPLEX remuxes MPEG-2 transport streams into program streams"
HOMEPAGE="http://www.metzlerbros.org/dvb/"
SRC_URI="http://www.metzlerbros.org/dvb/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

src_compile() {
	tc-export CC
	emake CFLAGS="${CFLAGS} -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -DVERSION=\\\"${PV}\\\"" LDFLAGS="${LDFLAGS}"|| die "emake failed"
}

src_install() {
	dobin replex
	dodoc README CHANGES TODO
}
