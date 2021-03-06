# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-admin/cvs-repo/gentoo-x86/app-admin/xtail/xtail-2.1-r1.ebuild,v 1.5 2012/06/07 21:02:02 ranger Exp $

EAPI=4

inherit eutils toolchain-funcs

DESCRIPTION="Tail multiple logfiles at once, even if rotated"
HOMEPAGE="http://www.unicom.com/sw/xtail/"
SRC_URI="http://www.unicom.com/sw/xtail/${P}.tar.gz
	http://www.unicom.com/files/20120219-patch-aalto.zip"

LICENSE="as-is"
SLOT="0"
KEYWORDS="amd64 ppc ~sparc x86"
IUSE=""
DEPEND="app-arch/unzip"

src_prepare() {
	epatch ../0001-Use-ISO8601-Fix-Gcc-header-Use-C-c.patch
	epatch ../0001-xtail.1-remove-SIGQUIT.patch
	epatch ../xtail_2.1-5-debian-local-changes.patch
}

src_compile() {
	tc-export CC
	emake
}

src_install() {
	dobin xtail
	doman xtail.1
	dodoc README
	newdoc ../README README.patches
}
