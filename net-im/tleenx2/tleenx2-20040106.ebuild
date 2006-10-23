# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-im/cvs-repo/gentoo-x86/net-im/tleenx2/Attic/tleenx2-20040106.ebuild,v 1.6 2006/10/23 19:21:32 spock Exp $

IUSE=""
LICENSE="GPL-2"

DESCRIPTION="A client for Polish Tlen.pl instant messenging system."
HOMEPAGE="http://tleenx.sourceforge.net/"
SRC_URI="http://dev.gentoo.org/~spock/portage/distfiles/tleenx2-20040106.tar.gz"
SLOT="0"
KEYWORDS="x86"
S="${WORKDIR}/${PN}"

RDEPEND="net-libs/libtlen
	>=x11-libs/gtk+-2.0"

DEPEND="dev-util/pkgconfig
	${RDEPEND}"

src_install() {
	einstall
	dodoc doc/* AUTHORS BUGS TODO
}
