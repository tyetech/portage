# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2 
# $Header: /usr/local/ssd/gentoo-x86/output/x11-wm/cvs-repo/gentoo-x86/x11-wm/evilwm/Attic/evilwm-0.99.11.ebuild,v 1.1 2002/11/12 11:11:03 bcowan Exp $

MY_P="${PN}_${PV}.orig"
S=${WORKDIR}/${MY_P/_/-}

DESCRIPTION="A minimalist, no frills window manager for X."
SRC_URI="http://download.sourceforge.net/evilwm/${MY_P}.tar.gz"
HOMEPAGE="http://evilwm.sourceforge.net"

SLOT="0"
LICENSE="as-is"
KEYWORDS="~x86"

DEPEND="virtual/x11"

src_compile() {
	emake allinone || die
}

src_install () {
	exeinto /usr/bin
	doexe evilwm

	doman evilwm.1
	dodoc ChangeLog README* INSTALL TODO
}

