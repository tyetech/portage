# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-gfx/cvs-repo/gentoo-x86/media-gfx/photopc/photopc-3.05.ebuild,v 1.7 2004/06/24 22:46:27 agriffis Exp $

S=${WORKDIR}/${P}
DESCRIPTION="Utility to control digital cameras based on Sierra Imaging firmware"
SRC_URI="mirror://sourceforge/photopc/${P}.tar.gz"
HOMEPAGE="http://photopc.sourceforge.net"

SLOT="0"
LICENSE="BSD | as-is"
KEYWORDS="x86"

DEPEND="virtual/glibc"

src_unpack ()
{
	unpack ${A}
	cd ${S}
}

src_install ()
{
	dobin photopc
	dobin epinfo
	doman photopc.1
	doman epinfo.1
}
