# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-misc/cvs-repo/gentoo-x86/sci-misc/ncview/Attic/ncview-1.93b.ebuild,v 1.1 2007/04/30 11:12:46 bicatali Exp $

inherit multilib

DESCRIPTION="X-based viewer for netCDF files"
SRC_URI="ftp://cirrus.ucsd.edu/pub/ncview/${P}.tar.gz"
HOMEPAGE="http://meteora.ucsd.edu/~pierce/ncview_home_page.html"

LICENSE="GPL-2"
SLOT="0"
IUSE="udunits"
KEYWORDS="~x86 ~amd64 ~ppc"

DEPEND="sci-libs/netcdf
	media-libs/netpbm
	|| ( x11-libs/libXaw virtual/x11 )
	udunits? ( sci-libs/udunits )"

src_compile() {
	# force netpbm (could be a use flag, but worth it?)
	econf \
		--with-libppm \
		$(use_with udunits) \
		|| die "econf failed"
	emake || die "emake failed"
}

src_install() {
	dodir /usr/share/X11/app-defaults
	dodir /usr/share/${PN}
	emake \
		DESTDIR="${D}" \
		BINDIR="${D}/usr/bin" \
		MANDIR="${D}/usr/share/man/man1" \
		NCVIEW_LIB_DIR="${D}/usr/share/${PN}" \
		XAPPLRESDIR="${D}/usr/share/X11/app-defaults" \
		install || "emake install failed"
	insinto /usr/share/${PN}
	doins *.ncmap nc_overlay* || die "doins failed"
	dodoc README README_WISH_LIST RELEASE_NOTES
}
