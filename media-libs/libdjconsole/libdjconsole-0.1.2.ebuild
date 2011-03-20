# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/libdjconsole/Attic/libdjconsole-0.1.2.ebuild,v 1.7 2011/03/20 18:13:05 ssuominen Exp $

EAPI=2

DESCRIPTION="A driver for the DJ Console, built on top of libusb"
HOMEPAGE="http://djplay.sourceforge.net/"
SRC_URI="mirror://sourceforge/djplay/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc x86"
IUSE=""

RDEPEND="virtual/libusb:0"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"

src_install() {
	emake install DESTDIR="${D}" || die
	dodoc ChangeLog NEWS README AUTHORS
}
