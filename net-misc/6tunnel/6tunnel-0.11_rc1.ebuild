# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/6tunnel/6tunnel-0.11_rc1.ebuild,v 1.3 2006/11/27 00:07:29 vapier Exp $

DESCRIPTION="TCP proxy for applications that don't speak IPv6"
HOMEPAGE="http://toxygen.net/6tunnel"
SRC_URI="http://toxygen.net/6tunnel/${P/_/}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~s390"
IUSE=""

DEPEND=""

S=${WORKDIR}/6tunnel-0.11

src_install() {
	dobin 6tunnel || die
	doman 6tunnel.1
}
