# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/cdplay/Attic/cdplay-0.9.ebuild,v 1.10 2005/03/30 16:32:35 hansmi Exp $

DESCRIPTION="Console CD Player"
HOMEPAGE="http://www.x-paste.de/projects/index.php"
SRC_URI="http://www.x-paste.de/files/${P}.tar.gz"

DEPEND="virtual/libc"
IUSE=""
SLOT="0"
LICENSE="GPL-2"

KEYWORDS="x86 ppc ~alpha sparc amd64 ppc64"

src_compile() {
	make || die
}

src_install() {
	dobin cdplay
	dodoc CREDITS README
}
