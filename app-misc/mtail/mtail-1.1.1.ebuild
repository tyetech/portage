# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-misc/cvs-repo/gentoo-x86/app-misc/mtail/Attic/mtail-1.1.1.ebuild,v 1.4 2004/06/24 22:25:26 agriffis Exp $

DESCRIPTION="tail workalike, that performs output colourising"
HOMEPAGE="http://matt.immute.net/src/mtail/"
SRC_URI="http://matt.immute.net/src/mtail/mtail-${PV}.tgz"
LICENSE="as-is"

SLOT="0"
KEYWORDS="x86 alpha sparc"
IUSE=""

DEPEND=""

RDEPEND="dev-lang/python"

S=${WORKDIR}/${P}

src_install() {
	dobin mtail
	dodoc CHANGES LICENSE mtailrc.sample README
}
