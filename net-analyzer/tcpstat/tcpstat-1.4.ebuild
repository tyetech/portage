# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/tcpstat/Attic/tcpstat-1.4.ebuild,v 1.4 2002/08/14 12:12:29 murphy Exp $

S=${WORKDIR}/${P}
DESCRIPTION="Reports network interface statistics"
SRC_URI="http://www.frenchfries.net/paul/tcpstat/${P}.tar.gz"
HOMEPAGE="http://www.frenchfries.net/paul/tcpstat/"

DEPEND=">=net-libs/libpcap-0.5.2
	berkdb? ( <sys-libs/db-2 )"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86 sparc sparc64"

src_install () {

	make DESTDIR=${D} install || die
	use berkdb && dobin src/tcpprof
	  
	dodoc AUTHORS ChangeLog COPYING LICENSE NEWS README*

}
