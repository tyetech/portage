# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-libs/cvs-repo/gentoo-x86/sci-libs/libticables2/libticables2-1.3.3.ebuild,v 1.6 2012/08/04 15:02:20 bicatali Exp $

EAPI=4

inherit eutils multilib

DESCRIPTION="Library to handle different link cables for TI calculators"
HOMEPAGE="http://lpg.ticalc.org/prj_tilp/"
SRC_URI="mirror://sourceforge/tilp/tilp2-linux/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86 ~amd64-linux ~x86-linux"
IUSE="doc nls static-libs usb"

RDEPEND="dev-libs/glib:2
	usb? ( virtual/libusb:0 )
	nls? ( virtual/libintl )"

DEPEND="${RDEPEND}
	virtual/pkgconfig
	nls? ( sys-devel/gettext )"

DOCS=( AUTHORS LOGO NEWS README ChangeLog docs/api.txt )

src_configure() {
	# --disable-libusb $(use_enable usb libusb10) would enable virtual/libusb:1
	econf \
		--disable-rpath \
		$(use_enable nls) \
		$(use_enable static-libs static) \
		$(use_enable usb libusb)
}

src_install() {
	default
	use doc && dohtml docs/html/*
	use static-libs || rm -f "${ED}"/usr/$(get_libdir)/${PN}.la
}

pkg_postinst() {
	elog "Please read README in /usr/share/doc/${PF}"
	elog "if you encounter any problem with a link cable"
}
