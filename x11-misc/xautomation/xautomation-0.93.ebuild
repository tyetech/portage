# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/xautomation/Attic/xautomation-0.93.ebuild,v 1.3 2004/06/12 17:57:05 kloeri Exp $

DESCRIPTION="Control X from command line and find things on screen"
HOMEPAGE="http://hoopajoo.net/projects/xautomation.html"
SRC_URI="http://hoopajoo.net/static/projects/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha ~ia64 x86"
IUSE=""
DEPEND=""

src_compile() {
	econf || die 'econf failed'
	emake || die 'emake failed'
}

src_install() {
	make DESTDIR=${D} install || die 'make install failed'
	dodoc AUTHORS ChangeLog
}
