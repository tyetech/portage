# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/varconf/Attic/varconf-0.5.4.ebuild,v 1.1 2002/10/01 20:46:32 verwilst Exp $

S="${WORKDIR}/${P}"
DESCRIPTION="A configuration system designed for the STAGE server."
SRC_URI="ftp://victor.worldforge.org/pub/worldforge/libs/varconf/${P}.tar.bz2"
HOMEPAGE="http://www.worldforge.net"

SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="x86"

DEPEND="virtual/glibc"

src_compile() {

	econf || die
	emake || die

}

src_install() {

	make DESTDIR=${D} install || die

	dodoc AUTHORS COPYING ChangeLog NEWS README THANKS TODO
}
