# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-irc/cvs-repo/gentoo-x86/net-irc/weechat/Attic/weechat-0.0.3.ebuild,v 1.3 2004/06/24 23:10:00 agriffis Exp $

DESCRIPTION="Portable and multi-interface IRC client."
HOMEPAGE="http://weechat.flashtux.org/"
SRC_URI="http://weechat.flashtux.org/download/${P}.tar.bz2"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="virtual/glibc
	sys-libs/ncurses"
RDEPEND=""

src_compile() {
	econf || die "Configure failed"
	emake || die "Make failed"
}

src_install() {
	einstall DESTDIR=${D} || die "Install failed"
	dodoc AUTHORS BUGS COPYING README
}
