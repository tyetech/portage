# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-fs/cvs-repo/gentoo-x86/sys-fs/wpflash/wpflash-0.ebuild,v 1.1 2005/08/18 02:48:24 vapier Exp $

inherit eutils

DESCRIPTION="flash the firmware on a Webpal"
HOMEPAGE="http://webpal.bigbrd.com/"
SRC_URI="http://webpal.bigbrd.com/wpflash.c"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND=""

S=${WORKDIR}

src_unpack() {
	cp "${DISTDIR}"/${A} "${WORKDIR}"/ || die
	epatch "${FILESDIR}"/${PN}-gentoo.patch
}

src_compile() {
	emake wpflash || die
}

src_install() {
	dosbin wpflash || die
}
