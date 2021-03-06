# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/pywcs/pywcs-1.11.ebuild,v 1.4 2012/08/02 17:41:02 bicatali Exp $

EAPI=4

SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="2.7-pypy-* *-jython"

inherit distutils eutils

WCS_V=4.8.2
MYP=${P}-${WCS_V}

DESCRIPTION="Python routines for handling the FITS World Coordinate System"
HOMEPAGE="https://trac6.assembla.com/astrolib/wiki http://www.scipy.org/AstroLib"
SRC_URI="http://stsdas.stsci.edu/astrolib/${MYP}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE=""

CDEPEND=">=sci-astronomy/wcslib-${WCS_V}"
DEPEND="${CDEPEND}
	  virtual/pkgconfig"
RDEPEND="${CDEPEND}
	  dev-python/pyfits"

S=${WORKDIR}/${MYP}

src_prepare(){
	epatch "${FILESDIR}"/${P}-wcslib.patch
	distutils_src_prepare
}

src_test() {
	testing() {
		PYTHONPATH="$(ls -d build-${PYTHON_ABI}/lib.*)" \
			"$(PYTHON)" lib/${PN}/tests/test.py
	}
	python_execute_function testing
}

#FIX: compiles twice (once during build, another time during install)
# seems to be in the defsetup.py hack script
