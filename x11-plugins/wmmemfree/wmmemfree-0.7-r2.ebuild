# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-plugins/cvs-repo/gentoo-x86/x11-plugins/wmmemfree/wmmemfree-0.7-r2.ebuild,v 1.6 2010/09/20 09:01:56 s4t4n Exp $

EAPI=3

inherit eutils toolchain-funcs

DESCRIPTION="a blue memory monitoring dockapp."
HOMEPAGE="http://misuceldestept.go.ro/wmmemfree"
SRC_URI="http://ibiblio.org/pub/linux/X11/xutils/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ppc ppc64 sparc x86"
IUSE=""

RDEPEND="x11-libs/libX11
	x11-libs/libXext
	x11-libs/libXpm"
DEPEND="${RDEPEND}
	x11-proto/xextproto"

src_prepare() {
	epatch "${FILESDIR}"/${P}-add-kernel-26-support.patch
	epatch "${FILESDIR}"/${P}-fix-crash-when-there-is-no-swap.patch

	#Honour Gentoo LDFLAGS, see bug #337927.
	sed -e "s/-o \$(PROG)/\$(LDFLAGS) -o \$(PROG)/" -i Makefile
}

src_compile() {
	emake CC="$(tc-getCC)" FLAGS="${CFLAGS}" \
		STRIP="true" || die "emake failed."
}

src_install() {
	dobin ${PN}
	doman ${PN}.1
	dodoc ChangeLog README THANKS TODO WMS
}
