# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-laptop/cvs-repo/gentoo-x86/app-laptop/easy-slow-down-manager/easy-slow-down-manager-0.3.ebuild,v 1.2 2011/07/13 18:06:07 angelos Exp $

EAPI=4
inherit eutils linux-mod

DESCRIPTION="provides Linux users with functionality similar to Samsung Easy Speed Up Manager"
HOMEPAGE="http://code.google.com/p/easy-slow-down-manager/"
SRC_URI="http://${PN}.googlecode.com/files/${P}.tar.gz"

LICENSE="GPL-1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S=${WORKDIR}

BUILD_TARGETS="all"
MODULE_NAMES="samsung-backlight() easy_slow_down_manager()"

src_prepare() {
	epatch "${FILESDIR}"/${P}-kv_dir.patch
}

src_compile() {
	BUILD_PARAMS="KERN_DIR=${KV_DIR}"
	linux-mod_src_compile
}
