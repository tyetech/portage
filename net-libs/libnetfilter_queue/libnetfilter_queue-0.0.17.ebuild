# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-libs/cvs-repo/gentoo-x86/net-libs/libnetfilter_queue/libnetfilter_queue-0.0.17.ebuild,v 1.3 2012/05/05 02:54:27 jdhore Exp $

inherit linux-info

DESCRIPTION="API to packets that have been queued by the kernel packet filter"
HOMEPAGE="http://www.netfilter.org/projects/libnetfilter_queue/"
SRC_URI="http://www.netfilter.org/projects/${PN}/files/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~sparc ~x86"
IUSE=""

COMMON_DEPEND=">=net-libs/libnfnetlink-0.0.41"
DEPEND="${COMMON_DEPEND}
	virtual/pkgconfig"
RDEPEND=${COMMON_DEPEND}

CONFIG_CHECK="~NETFILTER_NETLINK_QUEUE"

pkg_setup() {
	linux-info_pkg_setup
	kernel_is lt 2 6 14 && die "requires at least 2.6.14 kernel version"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
}
