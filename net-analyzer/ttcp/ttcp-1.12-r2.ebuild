# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/ttcp/ttcp-1.12-r2.ebuild,v 1.1 2012/10/12 10:14:02 pinkbyte Exp $

EAPI="4"

inherit toolchain-funcs

DESCRIPTION="Tool to test TCP and UDP throughput"
HOMEPAGE="
	http://ftp.arl.mil/~mike/ttcp.html
	http://www.netcore.fi/pekkas/linux/ipv6/
"
SRC_URI="
	mirror://gentoo/${P}.tar.bz2
	http://www.netcore.fi/pekkas/linux/ipv6/${PN}.c
"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~mips ~ppc ~sparc ~x86 ~amd64-linux ~x86-linux ~ppc-macos"
IUSE=""

DEPEND=""

src_unpack() {
	default
	cp "${DISTDIR}/${PN}.c" "${S}/${PN}.c" || die "mv failed"
}

src_compile() {
	$(tc-getCC) ${CFLAGS} ${LDFLAGS} -o "${PN}" "${PN}".c || die "compile failed"
}

src_install() {
	dobin "${PN}"
	newman sgi-"${PN}".1 "${PN}".1
}
