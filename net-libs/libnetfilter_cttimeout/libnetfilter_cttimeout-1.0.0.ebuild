# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-libs/cvs-repo/gentoo-x86/net-libs/libnetfilter_cttimeout/libnetfilter_cttimeout-1.0.0.ebuild,v 1.2 2012/08/24 13:57:26 jer Exp $

EAPI="4"

inherit linux-info autotools-utils

DESCRIPTION="netlink interface to the connection tracking timeout infrastructure in the kernel packet filter"
HOMEPAGE="http://www.netfilter.org/projects/libnetfilter_cttimeout"
SRC_URI="http://www.netfilter.org/projects/${PN}/files/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~x86"
IUSE="static-libs"

RDEPEND="net-libs/libmnl"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

CONFIG_CHECK="~NF_CT_NETLINK_TIMEOUT"

pkg_setup() {
	linux-info_pkg_setup
	kernel_is lt 3 4 0 && ewarn "requires at least 3.4.0 kernel version"
}
