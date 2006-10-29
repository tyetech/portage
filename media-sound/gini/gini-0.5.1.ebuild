# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/gini/Attic/gini-0.5.1.ebuild,v 1.8 2006/10/29 22:10:00 flameeyes Exp $

IUSE=""

DESCRIPTION="gini is a free streaming media server for unix-like operating systems"
HOMEPAGE="http://gini.sf.net"
SRC_URI="mirror://sourceforge/gini/${P}.tar.bz2"
LICENSE="GPL-2"
SLOT="0"

KEYWORDS="x86 sparc amd64"

DEPEND="=dev-libs/glib-1.2*"

src_install() {
	einstall || die

	dodoc AUTHORS BUGS README TODO ChangeLog NEWS
}
