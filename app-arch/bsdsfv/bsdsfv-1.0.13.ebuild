# Copyright 1999-2002 Gentoo Technologies, Inc.	  
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-arch/cvs-repo/gentoo-x86/app-arch/bsdsfv/Attic/bsdsfv-1.0.13.ebuild,v 1.3 2002/10/17 12:48:56 vapier Exp $

S=${WORKDIR}/bsdsfv
DESCRIPTION="BSDSFV: All-in-one SFV checksum utility"
SRC_URI="mirror://sourceforge/bsdsfv/${P}.tar.gz"
HOMEPAGE="http://bsdsfv.sourceforge.net/"

SLOT="0"
LICENSE="BSD"
KEYWORDS="x86 ppc sparc sparc64"

DEPEND="virtual/glibc"
RDEPEND="${DEPEND}"

src_compile() {
	emake || die
}

src_install() {
	dobin bsdsfv
	dodoc README MANUAL
}
