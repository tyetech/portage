# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-mail/cvs-repo/gentoo-x86/net-mail/pfqueue/Attic/pfqueue-0.5.1.ebuild,v 1.1 2006/01/11 22:51:39 ticho Exp $

inherit eutils toolchain-funcs

DESCRIPTION="pfqueue is an ncurses console-based tool for managing Postfix
queued messages"
HOMEPAGE="http://pfqueue.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}-src.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""
DEPEND="virtual/libc
		sys-devel/libtool
		sys-libs/ncurses"

src_compile() {
	econf || die "econf failed"
	emake || die "make failed"
}

src_install() {
	make DESTDIR=${D} install || die
	dodoc README ChangeLog NEWS TODO AUTHORS
}
