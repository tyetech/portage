# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/simplejson/Attic/simplejson-2.0.4.ebuild,v 1.1 2008/11/22 17:17:08 neurogeek Exp $

inherit distutils

KEYWORDS="~amd64 ~x86"

DESCRIPTION="A simple, fast, complete, correct and extensible JSON encoder and decoder."
HOMEPAGE="http://undefined.org/python/#simplejson"
SRC_URI="http://cheeseshop.python.org/packages/source/${PN:0:1}/${PN}/${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
IUSE="doc test"

RDEPEND="<dev-lang/python-2.6"
DEPEND="dev-python/setuptools
		${RDEPEND}"

src_install() {
	distutils_src_install

	if use doc; then
		dohtml -r docs/*
	fi
}

src_test() {
	PYTHONPATH=. "${python}" simplejson/tests/__init__.py || die "test failed"
}
