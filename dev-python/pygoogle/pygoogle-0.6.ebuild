# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/pygoogle/Attic/pygoogle-0.6.ebuild,v 1.1 2004/10/30 14:24:33 lucass Exp $

inherit distutils

DESCRIPTION="A Python wrapper for the Google web API"
SRC_URI="mirror://sourceforge/pygoogle/${P}.tar.gz"
HOMEPAGE="http://pygoogle.sourceforge.net/"

IUSE=""
SLOT="0"
LICENSE="PYTHON"
KEYWORDS="~x86"

DEPEND="virtual/python"

src_install() {
	distutils_src_install
	cd doc && dohtml -r * && cd ..
	dodoc readme.txt
}
