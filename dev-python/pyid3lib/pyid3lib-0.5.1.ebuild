# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/pyid3lib/Attic/pyid3lib-0.5.1.ebuild,v 1.1 2004/06/05 15:09:56 lucass Exp $

inherit distutils

DESCRIPTION="Module for manipulating ID3 tags in Python"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.bz2"
HOMEPAGE="http://pyid3lib.sourceforge.net/"
IUSE=""
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="~x86"
DEPEND="virtual/python
	media-libs/id3lib"

src_install() {
	distutils_src_install
	dohtml doc.html
}

