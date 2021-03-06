# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-process/cvs-repo/gentoo-x86/sys-process/psinfo/psinfo-0.12.ebuild,v 1.1 2011/04/25 15:48:10 jlec Exp $

EAPI="4"

inherit eutils toolchain-funcs

DESCRIPTION="Process information and statistics using the kernel /proc interface"
HOMEPAGE="http://www.ward.nu/computer/psinfo/"
SRC_URI="http://www.ward.nu/computer/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
LICENSE="GPL-2"
IUSE=""

src_prepare () {
	epatch "${FILESDIR}"/${P}-asneeded.patch
	tc-export CC
}

#src_compile() {
#	emake \
#		CFLAGS="${CFLAGS}" \
#		CC=$(tc-getCC)
#}

#src_install() {
#	dobin ${PN}
#	dodoc README
#}
