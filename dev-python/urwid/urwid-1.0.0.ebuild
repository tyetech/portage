# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/urwid/urwid-1.0.0.ebuild,v 1.2 2011/11/04 22:30:57 hwoarang Exp $

EAPI="3"
PYTHON_USE_WITH="ncurses"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="*-jython"
PYTHON_TESTS_FAILURES_TOLERANT_ABIS="3.1"
DISTUTILS_SRC_TEST="setup.py"

inherit distutils

DESCRIPTION="Urwid is a curses-based user interface library for Python"
HOMEPAGE="http://excess.org/urwid/ http://pypi.python.org/pypi/urwid"
SRC_URI="http://excess.org/urwid/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-interix ~amd64-linux ~ia64-linux ~x86-linux"
IUSE="examples"

DEPEND="dev-python/setuptools"
RDEPEND=""

PYTHON_CFLAGS=("2.* + -fno-strict-aliasing")

src_install() {
	distutils_src_install

	dohtml reference.html tutorial.html

	if use examples; then
		docinto examples
		dodoc bigtext.py browse.py calc.py dialog.py edit.py \
			fib.py graph.py input_test.py tour.py
	fi
}
