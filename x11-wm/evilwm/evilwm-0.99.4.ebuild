# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-wm/cvs-repo/gentoo-x86/x11-wm/evilwm/Attic/evilwm-0.99.4.ebuild,v 1.10 2004/06/28 23:11:17 agriffis Exp $

S=${WORKDIR}/${P}
DESCRIPTION="A minimalist, no frills window manager for X."
SRC_URI="http://download.sourceforge.net/evilwm/${PN}_${PV}-1.tar.gz"
HOMEPAGE="http://evilwm.sourceforge.net"

IUSE=""
SLOT="0"
LICENSE="as-is"
KEYWORDS="x86 sparc ppc"

DEPEND="virtual/x11
	virtual/libc"

RDEPEND="$DEPEND"

src_compile() {
	emake allinone || die
}

src_install () {
	dodoc ChangeLog README*

	exeinto /usr/bin
	doexe evilwm

	doman evilwm.1
}

