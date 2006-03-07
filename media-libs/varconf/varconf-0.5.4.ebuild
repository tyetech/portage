# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/varconf/Attic/varconf-0.5.4.ebuild,v 1.12 2006/03/07 13:10:15 flameeyes Exp $

DESCRIPTION="A configuration system designed for the STAGE server."
SRC_URI="ftp://victor.worldforge.org/pub/worldforge/libs/varconf/${P}.tar.bz2"
HOMEPAGE="http://www.worldforge.org/"

SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="x86 sparc"
IUSE=""

src_install() {
	make DESTDIR="${D}" install || die

	dodoc AUTHORS COPYING ChangeLog NEWS README THANKS TODO
}
