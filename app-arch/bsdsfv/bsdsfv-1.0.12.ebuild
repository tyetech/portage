# Copyright 1999-2002 Gentoo Technologies, Inc.      
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/app-arch/cvs-repo/gentoo-x86/app-arch/bsdsfv/Attic/bsdsfv-1.0.12.ebuild,v 1.4 2002/07/11 06:30:09 drobbins Exp $

S=${WORKDIR}/bsdsfv
DESCRIPTION="BSDSFV: All-in-one SFV checksum utility"
SRC_URI="mirror://sourceforge/bsdsfv/${P}.tar.gz"
HOMEPAGE="http://bsdsfv.sourceforge.net/"
LICENSE="BSD"

DEPEND="virtual/glibc"

src_compile() {
	emake || die
}

src_install () {

	dobin bsdsfv
	dodoc README MANUAL

}
