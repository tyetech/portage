# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-p2p/cvs-repo/gentoo-x86/net-p2p/knapster2/Attic/knapster2-0.5.ebuild,v 1.2 2004/06/25 00:33:57 agriffis Exp $ 

inherit kde-base libtool

need-kde 3

LICENSE="GPL-2"
KEYWORDS="~x86 ~ppc"
SLOT="0"

IUSE=""
DESCRIPTION="Napster Client for Linux"
SRC_URI="mirror://sourceforge/knapster/${P}.tar.gz"
HOMEPAGE="http://knapster.sourceforge.net"

src_compile() {
	export CPPFLAGS=${CFLAGS}
	econf || die
	emake || die
}
