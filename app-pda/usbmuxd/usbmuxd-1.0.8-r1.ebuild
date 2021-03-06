# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-pda/cvs-repo/gentoo-x86/app-pda/usbmuxd/usbmuxd-1.0.8-r1.ebuild,v 1.1 2012/08/10 17:41:50 ssuominen Exp $

EAPI=4
inherit cmake-utils user toolchain-funcs

DESCRIPTION="USB multiplex daemon for use with Apple iPhone/iPod Touch devices"
HOMEPAGE="http://www.libimobiledevice.org/"
SRC_URI="http://www.libimobiledevice.org/downloads/${P}.tar.bz2"

LICENSE="GPL-2 GPL-3 LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc64 ~x86"
IUSE=""

RDEPEND=">=app-pda/libplist-1.8-r1
	virtual/libusb:1"
DEPEND="${RDEPEND}
	virtual/os-headers
	virtual/pkgconfig"

pkg_setup() {
	enewgroup plugdev
	enewuser usbmux -1 -1 -1 "usb,plugdev"
}

src_configure() {
	if has_version sys-fs/udev; then
		local udevdir="$($(tc-getPKG_CONFIG) --variable=udevdir udev)"
		sed -i -e "/rules/s:/lib/udev:${udevdir}:" udev/CMakeLists.txt || die
	fi

	cmake-utils_src_configure
}

DOCS="AUTHORS README README.devel"
