# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-p2p/cvs-repo/gentoo-x86/net-p2p/qtorrent/Attic/qtorrent-0.9.6.1-r1.ebuild,v 1.1 2005/02/22 21:03:13 carlo Exp $

inherit eutils

DESCRIPTION="QTorrent is a PyQt GUI for BitTorrent."
HOMEPAGE="http://thegraveyard.org/qtorrent.php"
SRC_URI="http://thegraveyard.org/files/${P}.tar.bz2"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~ppc ~sparc"
IUSE=""
DEPEND="dev-python/PyQt"

src_unpack() {
	unpack ${A}
	cd ${S}
	epatch ${FILESDIR}/${P}-sizetype.patch
}

src_install() {
	python setup.py install --prefix=${D}/usr
}
