# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-apps/cvs-repo/gentoo-x86/sys-apps/kudzu/Attic/kudzu-0.99.66.ebuild,v 1.2 2003/03/03 05:48:20 livewire Exp $

S=${WORKDIR}/${P}
DESCRIPTION="Redhats Hardware detection"
SRC_URI="mirror://gentoo/${P}.tar.gz"
HOMEPAGE="http://www.knopper.net"

KEYWORDS="~x86 -ppc -sparc -alpha -mips"
SLOT="0"
LICENSE="GPL"

DEPEND=">=dev-libs/dietlibc-0.20"
RDEPEND="virtual/glibc"
src_unpack() {
    unpack ${A}
}


src_compile() {
	
	emake  || die
}

src_install() {
	einstall DESTDIR=${D} PREFIX=/usr MANDIR=/usr/share/man || die "Install failed"

}

