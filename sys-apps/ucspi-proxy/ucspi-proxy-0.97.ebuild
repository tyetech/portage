# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-apps/cvs-repo/gentoo-x86/sys-apps/ucspi-proxy/ucspi-proxy-0.97.ebuild,v 1.5 2009/11/20 12:42:35 bangert Exp $

inherit toolchain-funcs

DESCRIPTION="A proxy program for two connections set up by a UCSPI server and a UCSPI client."
HOMEPAGE="http://untroubled.org/ucspi-proxy/"
SRC_URI="${HOMEPAGE}archive/${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"
IUSE=""
DEPEND=">=dev-libs/bglibs-1.025"
RDEPEND="${DEPEND}"

src_compile() {
	echo "$(tc-getCC) ${CFLAGS}" > conf-cc
	echo "$(tc-getCC) ${LDFLAGS}" > conf-ld
	echo "${D}/usr/bin" > conf-bin
	echo "${D}/usr/share/man/" > conf-man
	echo "/usr/include/bglibs/" > conf-bgincs
	echo "/usr/lib/bglibs/" > conf-bglibs
	emake || die
}

src_install() {
	einstall || die
	dodoc ANNOUNCEMENT NEWS README TODO
}
