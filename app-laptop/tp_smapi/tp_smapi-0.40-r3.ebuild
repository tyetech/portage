# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-laptop/cvs-repo/gentoo-x86/app-laptop/tp_smapi/tp_smapi-0.40-r3.ebuild,v 1.2 2012/04/12 12:23:54 lxnay Exp $

EAPI=4

inherit eutils linux-mod

DESCRIPTION="IBM ThinkPad SMAPI BIOS driver"
HOMEPAGE="http://tpctl.sourceforge.net/"
SRC_URI="mirror://sourceforge/tpctl/${P}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="hdaps"

RESTRICT="userpriv"

# We need dmideode if the kernel does not support DMI_DEV_TYPE_OEM_STRING
# in dmi.h
DEPEND="sys-apps/dmidecode"
RDEPEND="${DEPEND}"

pkg_pretend() {
	linux-mod_pkg_setup

	if kernel_is lt 2 6 19; then
		eerror
		eerror "${P} requires Linux kernel 2.6.19 or above."
		eerror
		die "Unsupported kernel version"
	fi

	MODULE_NAMES="thinkpad_ec(extra:) tp_smapi(extra:)"
	BUILD_PARAMS="KSRC=${KV_DIR} KBUILD=${KV_OUT_DIR}"
	BUILD_TARGETS="default"

	if use hdaps; then
		CONFIG_CHECK="~INPUT_UINPUT"
		WARNING_INPUT_UINPUT="Your kernel needs uinput for the hdaps module to perform better"
		linux-info_pkg_setup

		MODULE_NAMES="${MODULE_NAMES} hdaps(extra:)"
		BUILD_PARAMS="${BUILD_PARAMS} HDAPS=1"

		CONFIG_CHECK="~!SENSORS_HDAPS"
		ERROR_SENSORS_HDAPS="${P} with USE=hdaps conflicts with in-kernel HDAPS (CONFIG_SENSORS_HDAPS)"
		linux-info_pkg_setup
	fi
}

pkg_setup() {
	# run again as pkg_pretend is not var safe
	pkg_pretend
}

src_prepare() {
	epatch \
		"${FILESDIR}/${P}-2.6.37.patch" \
		"${FILESDIR}/fix_header_check.patch"
}

src_install() {
	linux-mod_src_install
	dodoc CHANGES README
	newinitd "${FILESDIR}"/${P}-initd smapi
	newconfd "${FILESDIR}"/${P}-confd smapi
}
