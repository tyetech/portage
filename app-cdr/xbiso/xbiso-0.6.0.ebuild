# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-cdr/cvs-repo/gentoo-x86/app-cdr/xbiso/Attic/xbiso-0.6.0.ebuild,v 1.3 2004/10/16 14:55:41 chrb Exp $


DESCRIPTION="Xbox xdvdfs ISO extraction utility"
HOMEPAGE="http://sourceforge.net/projects/xbiso/"
SRC_URI="mirror://sourceforge/xbiso/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"
IUSE=""

src_install() {
	dobin xbiso || die "install failed"
	dodoc README CHANGELOG
}
