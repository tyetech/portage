# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/wmname/wmname-0.1.ebuild,v 1.3 2011/06/01 09:09:30 xmw Exp $

EAPI=3

inherit eutils toolchain-funcs

DESCRIPTION="utility to set the name of your window manager"
HOMEPAGE="http://tools.suckless.org/wmname"
SRC_URI="http://dl.suckless.org/tools/wmname-0.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="x11-libs/libX11"
DEPEND="${RDEPEND}"

src_prepare() {
	epatch "${FILESDIR}"/${P}-buildsystem.patch
}

src_compile() {
	emake CC="$(tc-getCC)" LD="$(tc-getCC)" || die
}

src_install() {
	emake CC="$(tc-getCC)" LD="$(tc-getCC)" \
		PREFIX="${EPREFIX}"/usr DESTDIR="${D}" install || die
	dodoc README || die
}
