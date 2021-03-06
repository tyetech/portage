# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-wireless/cvs-repo/gentoo-x86/net-wireless/at76c503a/at76c503a-9999.ebuild,v 1.2 2007/08/29 18:48:08 genstef Exp $

inherit linux-mod cvs

DESCRIPTION="at76c503 is a Linux driver for the wlan USB adapter based on the Atmel at76c503 chip. It currently supports ad-hoc mode, infrastructure mode, and WEP. It supports adapters from Atmel, the Belkin F5D6050, Netgear MA101, and others."
HOMEPAGE="http://developer.berlios.de/projects/at76c503a/"
SRC_URI=""
LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""
RDEPEND="net-wireless/atmel-firmware
		|| ( >=sys-fs/udev-096 >=sys-apps/hotplug-20040923 )
		>=net-wireless/wireless-tools-26-r1"

S=${WORKDIR}/${ECVS_MODULE}

MODULE_NAMES="at76_usb(net:)"
BUILD_TARGETS="all"

CONFIG_CHECK="WIRELESS_EXT"
WIRELESS_EXT_ERROR="${P} requires support for Wireless LAN drivers (non-hamradio) & Wireless Extensions (CONFIG_WIRELESS_EXT)."

# CVS eclass options
ECVS_SERVER="cvs.${PN}.berlios.de:/cvsroot/${PN}"
ECVS_MODULE="${PN}"

pkg_setup() {
	linux-mod_pkg_setup
	BUILD_PARAMS="KERNEL_PATH=${KV_DIR}"
}

src_install() {
	linux-mod_src_install

	dodoc README CHANGELOG
}
