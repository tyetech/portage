# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-plugins/cvs-repo/gentoo-x86/x11-plugins/wmbinclock/Attic/wmbinclock-0.3.ebuild,v 1.2 2004/09/01 02:13:48 tgall Exp $

IUSE=""

HOMEPAGE="http://www.inxsoft.net/wmbinclock"
DESCRIPTION="wmbinclock shows the actual system time as a binary clock"
SRC_URI="http://www.inxsoft.net/wmbinclock/${P}.tar.gz"

SLOT="0"
LICENSE="freedist"
KEYWORDS="x86 ~amd64 ~ppc ppc64"

DEPEND="virtual/x11"

src_compile()
{
	myconf=""
	emake CFLAGS="${CFLAGS}" || die
}

src_install()
{
	dodoc README
	dodir /usr/bin
	make DESTDIR=${D}/usr install || die
}
