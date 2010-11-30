# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/libharu/Attic/libharu-2.2.1.ebuild,v 1.1 2010/11/30 22:33:37 bicatali Exp $

EAPI=2

DESCRIPTION="C/C++ library for PDF generation"
HOMEPAGE="http://www.libharu.org/"
SRC_URI="http://libharu.org/files/${P}.tar.bz2"

LICENSE="ZLIB"
SLOT="2"
KEYWORDS="~amd64 ~ppc ~x86"

IUSE="png zlib static-libs"

DEPEND="png? ( media-libs/libpng )
	zlib? ( sys-libs/zlib )"
RDEPEND="${DEPEND}"

src_configure() {
	econf \
		$(use_enable static-libs static) \
		$(use_with png) \
		$(use_with zlib)
}

src_install() {
	emake \
		INSTALL_STRIP_FLAG="" \
		DESTDIR="${D}" install || die "emake install failed"
	dodoc README
}
