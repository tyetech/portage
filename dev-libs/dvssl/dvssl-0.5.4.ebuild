# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-libs/cvs-repo/gentoo-x86/dev-libs/dvssl/Attic/dvssl-0.5.4.ebuild,v 1.1 2003/10/28 22:13:17 pvdabeel Exp $

A=dvssl-${PV}.tar.gz
S=${WORKDIR}/dvssl-${PV}
DESCRIPTION="dvssl provides a simple interface to openssl"
SRC_URI="http://tinf2.vub.ac.be/~dvermeir/software/dv/dvssl/download/${A}"
HOMEPAGE="http://tinf2.vub.ac.be/~dvermeir/software/dv/dvssl/html/"
KEYWORDS="~x86 ppc"
LICENSE="GPL-2"
SLOT="0"

IUSE=""
DEPEND="virtual/glibc
	dev-libs/openssl
	dev-libs/dvutil
	dev-libs/dvnet"
RDEPEND=${DEPEND}

src_unpack() {
	unpack ${A}
	cd ${S}
	aclocal
	autoconf
	automake
}

src_install() {
	make DESTDIR=${D} prefix=${D}/usr install || die
}
