# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-p2p/cvs-repo/gentoo-x86/net-p2p/knapster2/Attic/knapster2-0.5.ebuild,v 1.5 2004/08/14 14:52:13 swegener Exp $

inherit kde libtool

DESCRIPTION="Napster Client for Linux"
HOMEPAGE="http://knapster.sourceforge.net"
SRC_URI="mirror://sourceforge/knapster/${P}.tar.gz"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86 ~ppc"
IUSE=""

need-kde 3

src_compile() {
	export CPPFLAGS=${CFLAGS}
	econf || die
	emake || die
}
