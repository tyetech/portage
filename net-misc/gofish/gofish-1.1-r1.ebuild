# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/gofish/gofish-1.1-r1.ebuild,v 1.1 2011/04/06 21:43:06 xmw Exp $

EAPI=2

inherit eutils

DESCRIPTION="Gofish gopher server"
HOMEPAGE="http://gofish.sourceforge.net"
SRC_URI="mirror://sourceforge/gofish/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

DEPEND=""
RDEPEND=""

S=${WORKDIR}/${PN}

pkg_setup() {
	enewgroup gopher
	enewuser gopher -1 -1 -1 gopher
}

src_configure() {
	econf \
		--localstatedir=/var \
		--disable-http || die
}

src_install () {
	make DESTDIR="${D}" install || die

	newinitd "${FILESDIR}"/gofish.rc gofish || die
	newconfd "${FILESDIR}"/gofish.confd gofish || die

	dodoc AUTHORS ChangeLog Configure_GoFish README TODO || die
}
