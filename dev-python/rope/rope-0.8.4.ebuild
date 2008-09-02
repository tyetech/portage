# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/rope/Attic/rope-0.8.4.ebuild,v 1.1 2008/09/02 21:16:31 pythonhead Exp $

NEED_PYTHON=2.5

inherit distutils

DESCRIPTION="Python refactoring library"
HOMEPAGE="http://rope.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

src_install() {
	distutils_src_install
	docinto docs
	dodoc docs/*.txt
}

src_test() {
	PYTHONPATH="." ${python} ropetest/__init__.py
}
