# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/arpd/arpd-0.2-r1.ebuild,v 1.8 2012/07/20 01:30:30 blueness Exp $

EAPI="3"

inherit autotools eutils

DESCRIPTION="ARP server which claims all unassigned addresses (for network monitoring or simulation)"
HOMEPAGE="http://www.citi.umich.edu/u/provos/honeyd/"
SRC_URI="http://www.citi.umich.edu/u/provos/honeyd/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 hppa ppc ~ppc64 sparc x86"
IUSE=""

DEPEND=">=dev-libs/libdnet-1.4
	>=dev-libs/libevent-0.6
	net-libs/libpcap
	!sys-apps/iproute2"

S=${WORKDIR}/${PN}

src_prepare() {
	epatch "${FILESDIR}"/arpd.c.patch
	epatch "${FILESDIR}"/${P}-libevent.patch

	#fix bug 337481, replace test on libevent.a with libevent.so
	epatch "${FILESDIR}"/${P}-buildsystem-libevent-test.patch

	eautoreconf
}

src_configure() {
	econf --with-libdnet="${EPREFIX}"/usr --with-libevent="${EPREFIX}"/usr
}

src_install() {
	dosbin arpd || die
	doman arpd.8 || die
}
