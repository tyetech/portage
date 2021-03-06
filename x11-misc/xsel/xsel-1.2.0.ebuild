# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/xsel/xsel-1.2.0.ebuild,v 1.7 2012/05/06 16:21:25 armin76 Exp $

EAPI=4

DESCRIPTION="XSel is a command-line program for getting and setting the contents of the X selection."
HOMEPAGE="http://www.vergenet.net/~conrad/software/xsel"
SRC_URI="http://www.vergenet.net/~conrad/software/${PN}/download/${P}.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="amd64 ppc ~ppc64 x86 ~x86-interix ~amd64-linux ~x86-linux ~x86-solaris"
IUSE=""

RDEPEND="x11-libs/libX11
	x11-libs/libXext"
DEPEND="${RDEPEND}
	x11-proto/xproto
	x11-libs/libXt"

src_compile() {
	emake CFLAGS="${CFLAGS}"
}
