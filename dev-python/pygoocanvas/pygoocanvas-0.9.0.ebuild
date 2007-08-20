# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/pygoocanvas/Attic/pygoocanvas-0.9.0.ebuild,v 1.1 2007/08/20 18:56:55 hansmi Exp $

inherit autotools

DESCRIPTION="GooCanvas python bindings"
HOMEPAGE="http://developer.berlios.de/projects/pygoocanvas/"
SRC_URI="http://download.berlios.de/pygoocanvas/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~ppc ~x86"
IUSE=""

DEPEND="
	>=dev-python/pygobject-2.10.1
	>=dev-python/pygtk-2.10.4
	>=dev-python/pycairo-1.2
	>=x11-libs/goocanvas-0.9
"

src_install() {
	einstall || die
}
