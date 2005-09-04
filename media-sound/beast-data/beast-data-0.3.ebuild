# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/beast-data/Attic/beast-data-0.3.ebuild,v 1.12 2005/09/04 10:55:52 flameeyes Exp $

DESCRIPTION="BEAST - the Bedevilled Sound Engine (datafiles)"
HOMEPAGE="http://beast.gtk.org"
LICENSE="GPL-2"

DEPEND=">=media-sound/beast-0.4.1"

SRC_URI="ftp://beast.gtk.org/pub/beast/v0.3/${P}.tar.gz"
KEYWORDS="~amd64 ~ppc ~x86"

IUSE=""

SLOT="0"

src_install() {
	make DESTDIR=${D} install || die
	dodoc AUTHORS NEWS README TODO
}
