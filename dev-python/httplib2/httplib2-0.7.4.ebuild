# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/httplib2/httplib2-0.7.4.ebuild,v 1.2 2012/08/02 18:15:40 bicatali Exp $

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"

RESTRICT="test" # tests connect to random remote sites and exploderate badly

inherit distutils

DESCRIPTION="A comprehensive HTTP client library"
HOMEPAGE="http://code.google.com/p/httplib2/ http://pypi.python.org/pypi/httplib2"
SRC_URI="http://httplib2.googlecode.com/files/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~amd64-linux ~x64-macos ~x86-linux"
IUSE=""

DEPEND=""
RDEPEND=""

RESTRICT_PYTHON_ABIS="3.*"
#Restrict Python 3 support until upstream
#issue #189 is solved

src_test() {
	testing() {
		pushd "python$(python_get_version --major)" > /dev/null
		"$(PYTHON)" httplib2test.py
		popd > /dev/null
	}
	python_execute_function testing
}
