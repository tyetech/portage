# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/gbdfed/gbdfed-1.6.ebuild,v 1.1 2011/06/20 07:13:06 pva Exp $

EAPI=4
inherit eutils

DESCRIPTION="gbdfed Bitmap Font Editor"
HOMEPAGE="http://www.math.nmsu.edu/~mleisher/Software/gbdfed/"
SRC_URI="http://www.math.nmsu.edu/~mleisher/Software/gbdfed/${P}.tbz2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=x11-libs/gtk+-2.6:2
	>=media-libs/freetype-2
	x11-libs/libX11
	x11-libs/pango"
DEPEND="${RDEPEND}"

src_prepare() {
	sed "s:-D.*_DISABLE_DEPRECATED::" -i Makefile.in #248562
}

src_install() {
	emake DESTDIR="${D}" install
	dodoc README NEWS
}
