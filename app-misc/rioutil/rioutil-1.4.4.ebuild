# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-misc/cvs-repo/gentoo-x86/app-misc/rioutil/Attic/rioutil-1.4.4.ebuild,v 1.12 2006/10/08 11:15:11 jokey Exp $

inherit eutils

DESCRIPTION="Command line tool for transfering mp3s to and from a Rio 600, 800, Rio Riot, and Nike PSA/Play"
HOMEPAGE="http://rioutil.sourceforge.net/"
SRC_URI="mirror://sourceforge/rioutil/${P}.tar.bz2"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""

DEPEND="sys-libs/zlib
	virtual/libc
	dev-libs/libusb"

src_unpack() {
	unpack ${A}
	cd "${S}"
	epatch "${FILESDIR}/${P}-26headers.patch"
	epatch "${FILESDIR}/${PN}-gcc4.1.1.patch"
}

src_compile() {
	econf --with-usbdevfs || die "econf failed"
	emake || die "emake failed"
}

src_install() {
	einstall || die
	dodoc AUTHORS ChangeLog NEWS README TODO
}
