# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-mail/cvs-repo/gentoo-x86/net-mail/pfqueue/Attic/pfqueue-0.3.1.ebuild,v 1.3 2005/02/25 02:09:24 ticho Exp $

inherit eutils
DESCRIPTION="pfqueue is an ncurses console-based tool for managing Postfix
queued messages"
HOMEPAGE="http://pfqueue.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"
IUSE=""
DEPEND="virtual/libc"
RDEPEND="mail-mta/postfix"

src_install() {
	dosbin pfqueue
	dodoc README ChangeLog
	doman pfqueue.1
}
