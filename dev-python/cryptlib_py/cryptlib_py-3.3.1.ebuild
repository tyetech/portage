# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/cryptlib_py/Attic/cryptlib_py-3.3.1.ebuild,v 1.1 2007/02/16 14:49:35 alonbl Exp $

inherit distutils

MY_PV=${PV//.}

DESCRIPTION="Python bindings for dev-libs/cryptlib"
HOMEPAGE="http://www.cs.auckland.ac.nz/~pgut001/cryptlib/"
SRC_URI="ftp://ftp.franken.de/pub/crypt/cryptlib/cl${MY_PV}.zip"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

S="${WORKDIR}/bindings"

RDEPEND="virtual/python
	>=dev-libs/cryptlib-${PV}"
DEPEND="${RDEPEND}
	app-arch/unzip"

src_install(){
	DOCS="../README"
	distutils_src_install
}
