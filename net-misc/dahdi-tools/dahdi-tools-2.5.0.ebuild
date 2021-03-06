# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/dahdi-tools/dahdi-tools-2.5.0.ebuild,v 1.5 2012/05/06 14:30:51 ago Exp $

EAPI=4

inherit base

DESCRIPTION="Userspace tools to configure the kernel modules from net-misc/dahdi"
HOMEPAGE="http://www.asterisk.org"
SRC_URI="http://downloads.digium.com/pub/telephony/${PN}/releases/${P}.tar.gz
	mirror://gentoo/gentoo-${PN}-patchset-0.2.tar.bz2"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="ppp"

DEPEND="dev-libs/newt
	ppp? ( net-dialup/ppp )
	>=net-misc/dahdi-2.5.0
	!net-misc/zaptel
	>=sys-kernel/linux-headers-2.6.35
	virtual/libusb:0"
RDEPEND="${DEPEND}"

EPATCH_SUFFIX="diff"
PATCHES=( "${WORKDIR}/${PN}-patchset" )

src_compile() {
	default_src_compile
	emake tests
	use ppp && emake -C ppp
}

src_install() {
	emake DESTDIR="${D}" install
	use ppp && emake DESTDIR="${D}" -C ppp install
	emake DESTDIR="${D}" config

	dosbin patgen pattest patlooptest hdlcstress hdlctest hdlcgen hdlcverify timertest

	# install init scripts
	newinitd "${FILESDIR}"/dahdi.init2 dahdi
	newinitd "${FILESDIR}"/dahdi-autoconf.init2 dahdi-autoconf
	newconfd "${FILESDIR}"/dahdi-autoconf.conf2 dahdi-autoconf
}
