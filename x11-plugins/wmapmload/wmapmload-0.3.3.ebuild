# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-plugins/cvs-repo/gentoo-x86/x11-plugins/wmapmload/wmapmload-0.3.3.ebuild,v 1.7 2007/07/22 05:27:17 dberkholz Exp $

IUSE=""
DESCRIPTION="dockapp that monitors your apm battery status."
SRC_URI="http://tnemeth.free.fr/projets/programmes/${P}.tar.gz"
HOMEPAGE="http://tnemeth.free.fr/projets/dockapps.html"

SLOT="0"
KEYWORDS="x86 amd64 ~ppc"
LICENSE="GPL-2"

RDEPEND="x11-libs/libX11
	x11-libs/libXext
	x11-libs/libXt
	x11-libs/libXpm"
DEPEND="${RDEPEND}
	x11-proto/xextproto"

src_compile() {

	econf || die "configure failed"
	emake || die "parallel make failed"

}

src_install () {

	einstall || die "make install failed"

}
