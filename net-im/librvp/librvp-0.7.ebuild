# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-im/cvs-repo/gentoo-x86/net-im/librvp/Attic/librvp-0.7.ebuild,v 1.1 2006/03/25 04:38:03 jmglov Exp $

DESCRIPTION="An RVP (Microsoft Exchange Instant Messaging) plugin for Gaim 1.0 and upward"
HOMEPAGE="http://www.waider.ie/hacks/workshop/c/rvp/"
SRC_URI="http://www.waider.ie/hacks/workshop/c/rvp/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND=">=net-im/gaim-1.0.0"

src_install() {
	make install DESTDIR=${D} || die "install failure"
	dodoc AUTHORS COPYING ChangeLog INSTALL NEWS README rvp_protocol.txt
}
