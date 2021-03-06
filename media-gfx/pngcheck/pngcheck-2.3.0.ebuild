# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-gfx/cvs-repo/gentoo-x86/media-gfx/pngcheck/pngcheck-2.3.0.ebuild,v 1.6 2010/07/01 12:36:25 fauli Exp $

EAPI=2
inherit toolchain-funcs

DESCRIPTION="verifies the integrity of PNG, JNG and MNG files with internal checksums"
HOMEPAGE="http://www.libpng.org/pub/png/apps/pngcheck.html"
SRC_URI="mirror://sourceforge/png-mng/${P}.tar.gz"

LICENSE="as-is GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="sys-libs/zlib"

src_compile() {
	emake -f Makefile.unx \
		CC="$(tc-getCC)" \
		CFLAGS="${LDFLAGS} ${CFLAGS} -DUSE_ZLIB" \
		ZLIB="-lz" || die
}

src_install() {
	dobin png{check,split,-fix-IDAT-windowsize} || die
	dodoc CHANGELOG README
}
