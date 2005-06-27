# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/pen/Attic/pen-0.15.0.ebuild,v 1.2 2005/06/27 08:14:06 dholm Exp $

DESCRIPTION="TCP Load Balancing Port Forwarder"
HOMEPAGE="http://siag.nu/pen/"
SRC_URI="http://siag.nu/pub/pen/${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~ppc ~x86"
IUSE=""

DEPEND="dev-libs/openssl"

src_install() {
	emake DESTDIR=${D} docdir=/usr/share/doc/${PF} install || die
}
