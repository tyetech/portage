# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/quvi/quvi-0.4.2.ebuild,v 1.3 2012/09/25 02:46:07 blueness Exp $

EAPI=4

DESCRIPTION="A command line tool for parsing video download links"
HOMEPAGE="http://quvi.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${PV:0:3}/${P}.tar.xz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=net-misc/curl-7.18.2
	>=media-libs/libquvi-0.4.0"
DEPEND="${RDEPEND}
	app-arch/xz-utils
	virtual/pkgconfig"

src_configure() {
	econf \
		--with-manual
}
