# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-apps/cvs-repo/gentoo-x86/sys-apps/netkit-base/netkit-base-0.17-r9.ebuild,v 1.9 2012/01/31 16:04:14 ssuominen Exp $

EAPI="4"

inherit eutils toolchain-funcs

DESCRIPTION="Old-style inetd"
HOMEPAGE="ftp://ftp.uk.linux.org/pub/linux/Networking/netkit/"
SRC_URI="ftp://ftp.uk.linux.org/pub/linux/Networking/netkit/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="alpha amd64 hppa ia64 ~mips ppc ppc64 sparc x86"
IUSE=""

src_prepare() {
	epatch "${FILESDIR}"/*.patch
}

src_configure() {
	tc-export CC
	./configure || die
	sed -i \
		-e "/^CFLAGS=/s:=.*:=${CFLAGS} -Wall -Wbad-function-cast -Wcast-qual -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wnested-externs -Winline:" \
		-e "/^LDFLAGS=/s:=.*:=${LDFLAGS}:" \
		MCONFIG || die
}

src_install() {
	sed -i \
		-e 's:in\.telnetd$:in.telnetd -L /usr/sbin/telnetlogin:' \
		etc.sample/inetd.conf

	dosbin inetd/inetd
	doman inetd/inetd.8
	newinitd "${FILESDIR}"/inetd.rc6 inetd

	dodoc BUGS ChangeLog README
	docinto samples
	dodoc etc.sample/*
}
