# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/sonar/Attic/sonar-0.2.ebuild,v 1.2 2005/01/29 21:25:45 dragonheart Exp $

inherit eutils

IUSE=""

DESCRIPTION="An ICMP Chat"
SRC_URI="http://platon.intra-tec.de/sonar/${P}.tar.gz"
HOMEPAGE="http://platon.intra-tec.de/sonar/index.html"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64"

DEPEND="virtual/libc
	>=sys-libs/ncurses-5.4
	virtual/libpcap"

src_unpack() {
	unpack ${A}
	cd ${S}
	epatch ${FILESDIR}/sonar-0.2.patch
}

src_compile() {
	emake || die 'Compilation failed!'
}

src_install() {
	dobin sonar
}
