# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/polygon/polygon-2.0.4.ebuild,v 1.5 2012/08/02 06:43:25 patrick Exp $

EAPI=3
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.* 2.5-jython"

inherit distutils

DESCRIPTION="Python package to handle polygonal shapes in 2D"
HOMEPAGE="http://www.j-raedler.de/projects/polygon/"
SRC_URI="mirror://github/jraedler/Polygon2/Polygon-${PV}.zip"

LICENSE="LGPL-2"
SLOT="2"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	app-arch/unzip"

S="${WORKDIR}/Polygon-${PV}"

src_test() {
	testing() {
		PYTHONPATH="$(dir -d build-${PYTHON_ABI}/lib*)" "$(PYTHON)" test/Test.py
	}
	python_execute_function testing
}

src_install() {
	distutils_src_install
	dodoc HISTORY doc/Polygon.txt
}
