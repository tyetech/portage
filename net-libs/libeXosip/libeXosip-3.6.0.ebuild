# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-libs/cvs-repo/gentoo-x86/net-libs/libeXosip/libeXosip-3.6.0.ebuild,v 1.1 2012/10/07 14:03:48 chithanh Exp $

EAPI="2"

inherit eutils

MY_PV=${PV%.?}-${PV##*.}
MY_PV=${PV}
MY_P=${PN}2-${MY_PV}
DESCRIPTION="library that hides the complexity of using the SIP protocol for multimedia session establishement"
HOMEPAGE="http://savannah.nongnu.org/projects/exosip/"
SRC_URI="http://download.savannah.nongnu.org/releases/exosip/${MY_P}.tar.gz"

KEYWORDS="~amd64 ~ppc ~x86 ~ppc-macos ~x86-macos"
SLOT="0"
LICENSE="GPL-2"
IUSE="+srv ssl"

DEPEND=">=net-libs/libosip-3.6.0
	ssl? ( dev-libs/openssl )"
RDEPEND="${DEPEND}"

S=${WORKDIR}/${MY_P}

src_configure() {
	econf \
		--enable-mt \
		$(use_enable ssl openssl) \
		$(use_enable srv srvrec)
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
	dodoc AUTHORS ChangeLog NEWS README
}
