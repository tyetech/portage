# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-misc/cvs-repo/gentoo-x86/sci-misc/ncview/Attic/ncview-1.92e.ebuild,v 1.2 2007/07/22 06:56:34 dberkholz Exp $

DESCRIPTION="X-based viewer for netCDF files"
SRC_URI="ftp://cirrus.ucsd.edu/pub/ncview/${P}.tar.gz"
HOMEPAGE="http://meteora.ucsd.edu/~pierce/ncview_home_page.html"

LICENSE="GPL-2"
SLOT="0"
IUSE=""
KEYWORDS="~x86 ~amd64 ~ppc"

DEPEND="sci-libs/netcdf
	x11-libs/libXaw"

src_compile() {
	econf || die "./configure failed"
	emake || die
}

src_install() {
#	dodir /lib/ncview
	dobin ncview
	doman ncview.1
	insinto /usr/lib/ncview
	doins 3gauss.ncmap 3saw.ncmap default.ncmap \
		detail.ncmap hotres.ncmap \
		nc_overlay.earth.lat-lon.p8deg \
		nc_overlay.lat-lon-grid.20x60 \
		nc_overlay.lat-lon-grid.10x30
	insinto /usr/lib/X11/app-defaults
	newins Ncview-appdefaults Ncview
	dodoc README
}
