# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-crypt/cvs-repo/gentoo-x86/app-crypt/ccid/ccid-1.4.2.ebuild,v 1.7 2012/02/12 00:46:30 chainsaw Exp $

EAPI="3"

STUPID_NUM="3518"

inherit eutils

DESCRIPTION="CCID free software driver"
HOMEPAGE="http://pcsclite.alioth.debian.org/ccid.html"
SRC_URI="http://alioth.debian.org/download.php/${STUPID_NUM}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 arm hppa ~ppc ppc64 x86"
IUSE="twinserial +usb"

DEPEND=">=sys-apps/pcsc-lite-1.6.5
	usb? ( virtual/libusb:1 )"
RDEPEND="${DEPEND}"

src_prepare() {
	sed -i -e 's:GROUP="pcscd":ENV{PCSCD}="1":' \
		src/92_pcscd_ccid.rules || die
}

src_configure() {
	econf \
		LEX=: \
		--docdir="/usr/share/doc/${PF}" \
		$(use_enable twinserial) \
		$(use_enable usb libusb)
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
	dodoc README AUTHORS || die
	insinto /lib/udev/rules.d
	doins src/92_pcscd_ccid.rules || die
}
