# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-arch/cvs-repo/gentoo-x86/app-arch/cabextract/Attic/cabextract-0.5.ebuild,v 1.22 2004/06/26 08:22:07 seemant Exp $

DESCRIPTION="Extracts files from Microsoft .cab files"
HOMEPAGE="http://www.kyz.uklinux.net/cabextract.php3"
SRC_URI="http://www.kyz.uklinux.net/downloads/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 ppc sparc alpha"
IUSE=""

DEPEND="virtual/glibc"

src_install() {
	dobin cabextract || die
	doman cabextract.1
	dodoc NEWS README TODO AUTHORS
}
