# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-arch/cvs-repo/gentoo-x86/app-arch/bsdsfv/Attic/bsdsfv-1.14.ebuild,v 1.2 2003/04/16 20:13:55 absinthe Exp $

S="${WORKDIR}/bsdsfv"
DESCRIPTION="BSDSFV: All-in-one SFV checksum utility"
SRC_URI="mirror://sourceforge/bsdsfv/${PN}.${PV}.tar.gz"
HOMEPAGE="http://bsdsfv.sourceforge.net/"

SLOT="0"
LICENSE="BSD"
KEYWORDS="~x86 ~ppc ~sparc "

DEPEND="virtual/glibc"

src_compile() {
	cd ${S}
	epatch ${FILESDIR}/${PN}-${PV}-gentoo.diff
	emake || die
}

src_install() {
	dobin bsdsfv
	dodoc README MANUAL
}
