# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/ngrep/Attic/ngrep-1.40.ebuild,v 1.6 2002/08/14 12:12:28 murphy Exp $

S=${WORKDIR}/ngrep
DESCRIPTION="A grep for network layers"
SRC_URI="mirror://sourceforge/ngrep/${P}.tar.gz"
HOMEPAGE="http://ngrep.sourceforge.net"

DEPEND="virtual/glibc
	>=net-libs/libpcap-0.5.2"

RDEPEND="virtual/glibc"

SLOT="0"
LICENSE="as-is"
KEYWORDS="x86 sparc sparc64"

src_compile() {
	
	econf || die
	make || die
}

src_install() {

	into /usr
	dobin ngrep
	doman ngrep.8
	dodoc BUGS CHANGES COPYRIGHT CREDITS README TODO USAGE
}



