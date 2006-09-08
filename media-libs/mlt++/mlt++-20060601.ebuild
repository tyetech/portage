# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/mlt++/Attic/mlt++-20060601.ebuild,v 1.2 2006/09/08 19:28:08 corsair Exp $

DESCRIPTION="Various bindings for mlt"
HOMEPAGE="http://mlt.sourceforge.net/"
SRC_URI="mirror://gentoo/${P}.tar.bz2"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE=""

DEPEND=">=media-libs/mlt-0.2.2"

src_compile() {
	econf
	emake
}

src_install() {
	make DESTDIR=${D} install

	dodoc README CUSTOMISING HOWTO
}
