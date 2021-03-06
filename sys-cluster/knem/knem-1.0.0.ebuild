# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-cluster/cvs-repo/gentoo-x86/sys-cluster/knem/knem-1.0.0.ebuild,v 1.1 2012/10/12 10:44:12 alexxy Exp $

EAPI=4

inherit autotools linux-mod linux-info toolchain-funcs multilib

DESCRIPTION="High-Performance Intra-Node MPI Communication"
HOMEPAGE="http://runtime.bordeaux.inria.fr/knem/"
SRC_URI="http://runtime.bordeaux.inria.fr/knem/download/${P}.tar.gz"

LICENSE="GPL-2 LGPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug modules"

DEPEND="
		sys-apps/hwloc
		virtual/linux-sources"
RDEPEND="
		sys-apps/hwloc
		virtual/modutils"

MODULE_NAMES="knem(misc:${S}/driver/linux)"
BUILD_TARGETS="all"
BUILD_PARAMS="KDIR=${KERNEL_DIR}"

pkg_setup() {
	linux-info_pkg_setup
	linux-mod_pkg_setup
	ARCH="$(tc-arch-kernel)"
	ABI="${KERNEL_ABI}"
}

src_prepare() {
	sed 's:driver/linux::g' -i Makefile.am
	eautoreconf
}

src_configure() {
	econf \
		--enable-hwloc \
		--with-linux="${KERNEL_DIR}" \
		--with-linux-release=${KV_FULL} \
		$(use_enable debug)
}

src_compile() {
	default
	if use modules; then
		cd "${S}/driver/linux"
		linux-mod_src_compile || die "failed to build driver"
	fi
}

src_install() {
	default
	if use modules; then
		cd "${S}/driver/linux"
		linux-mod_src_install || die "failed to install driver"
	fi

	# Drop funny unneded stuff
	rm "${ED}/usr/sbin/knem_local_install" || die
	rmdir "${ED}/usr/sbin" || die
	# install udev rules
	local udevdir=/lib/udev
	if has_version sys-fs/udev ; then
		udevdir="$($(tc-getPKG_CONFIG) --variable=udevdir udev)"
	fi
	insinto "${udevdir}/rules.d"
	doins "${FILESDIR}/45-knem.rules" || die
	rm "${ED}/etc/10-knem.rules" || die
}
