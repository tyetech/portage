# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-irc/cvs-repo/gentoo-x86/net-irc/ninja/ninja-1.5.9_pre14.ebuild,v 1.5 2009/09/23 18:45:04 patrick Exp $

S=${WORKDIR}/${P/_*/}

DESCRIPTION="Ninja IRC Client"
HOMEPAGE="http://ninja.qoop.org/"
SRC_URI="ftp://qoop.org/ninja/stable/${P/_/}.tar.gz"
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="amd64 ppc ~ppc64 ~sparc x86"
IUSE="ncurses ipv6 ssl"

RESTRICT="test"

DEPEND="ncurses? ( sys-libs/ncurses )
	ssl?  ( dev-libs/openssl )"

MAKEOPTS="${MAKEOPTS} -j1"

src_compile() {
	econf $(use_enable ipv6) || die "econf failed"
	emake || die "emake failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
}
