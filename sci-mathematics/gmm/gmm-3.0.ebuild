# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-mathematics/cvs-repo/gentoo-x86/sci-mathematics/gmm/Attic/gmm-3.0.ebuild,v 1.2 2008/11/02 06:55:21 vapier Exp $

inherit eutils

DESCRIPTION="generic C++ template library for sparse, dense and skyline matrices"
SRC_URI="http://download.gna.org/getfem/stable/${P}.tar.gz"
HOMEPAGE="http://www-gmm.insa-toulouse.fr/getfem/"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE=""

src_install() {
	emake DESTDIR="${D}" install || die "make install failed"
	dodoc AUTHORS INSTALL README NEWS
}
