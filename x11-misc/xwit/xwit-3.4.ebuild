# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/xwit/xwit-3.4.ebuild,v 1.10 2010/04/03 00:55:17 ssuominen Exp $

EAPI=2
inherit eutils toolchain-funcs

DESCRIPTION="A collection of simple routines to call some of those X11 functions"
HOMEPAGE="http://ftp.x.org/contrib/utilities/xwit-3.4.README"
SRC_URI="http://ftp.x.org/contrib/utilities/${P}.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ppc x86"
IUSE=""

RDEPEND="x11-libs/libX11"
DEPEND="${RDEPEND}
	x11-proto/xproto"

src_prepare() {
	epatch "${FILESDIR}"/malloc.patch
	cp -vf "${FILESDIR}"/Makefile .
}

src_compile() {
	tc-export CC
	emake || die
}

src_install() {
	dobin xwit || die
	newman xwit.man xwit.1 || die
}
