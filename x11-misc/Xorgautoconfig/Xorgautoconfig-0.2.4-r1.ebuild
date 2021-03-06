# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/Xorgautoconfig/Xorgautoconfig-0.2.4-r1.ebuild,v 1.5 2007/04/28 12:54:14 tove Exp $

inherit eutils toolchain-funcs

DESCRIPTION="Xorgautconfig generates xorg.conf files for PPC based computers."
HOMEPAGE="http://dev.gentoo.org/~josejx/Xorgautoconfig.html"
SRC_URI="mirror://gentoo/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="ppc ppc64"
IUSE=""

DEPEND=""
RDEPEND="sys-apps/pciutils"

src_unpack() {
	unpack ${A}
	cd "${S}"

	epatch "${FILESDIR}"/backingstore.patch
	epatch "${FILESDIR}"/${PN}-lz.patch
}

src_compile() {
	emake CC="$(tc-getCC)" || die "emake failed!"
}

src_install() {
	dodir /usr
	into /usr
	dosbin Xorgautoconfig

	newinitd Xorgautoconfig.init Xorgautoconfig

	dodoc ChangeLog
}
