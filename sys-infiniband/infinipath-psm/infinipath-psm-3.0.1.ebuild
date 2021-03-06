# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-infiniband/cvs-repo/gentoo-x86/sys-infiniband/infinipath-psm/infinipath-psm-3.0.1.ebuild,v 1.2 2012/10/13 06:48:23 alexxy Exp $

EAPI="4"

OFED_VER="3.5"
OFED_RC="1"
OFED_RC_VER="2"
OFED_SUFFIX="115.1015_open"
OFED_SNAPSHOT="1"
OFED_SRC_SNAPSHOT="1"

inherit openib toolchain-funcs

DESCRIPTION="OpenIB userspace driver for the PathScale InfiniBand HCAs"
KEYWORDS="~amd64 ~x86 ~amd64-linux"
IUSE=""

RDEPEND="sys-infiniband/libibverbs:${SLOT}"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

block_other_ofed_versions

src_prepare() {
	sed -e 's:uname -p:uname -m:g' \
		-e 's:-Werror::g' \
		-i buildflags.mak || die
	epatch "${FILESDIR}"/${PN}-include.patch
}

src_install() {
	emake DESTDIR="${D}" install
	dodoc README
	# install udev rules
	local udevdir=/lib/udev
	has_version sys-fs/udev && udevdir="$($(tc-getPKG_CONFIG) --variable=udevdir udev)"
	insinto "${udevdir}"/rules.d
	doins "${FILESDIR}"/42-infinipath-psm.rules
}
