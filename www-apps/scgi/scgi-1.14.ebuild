# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/www-apps/cvs-repo/gentoo-x86/www-apps/scgi/scgi-1.14.ebuild,v 1.3 2011/09/01 16:29:55 jer Exp $

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.* *-jython"

inherit distutils

DESCRIPTION="A Python package for implementing SCGI servers."
HOMEPAGE="http://pypi.python.org/pypi/scgi http://python.ca/scgi/ http://www.mems-exchange.org/software/scgi/"
SRC_URI="http://python.ca/scgi/releases/${P}.tar.gz"

LICENSE="CNRI"
SLOT="0"
KEYWORDS="~amd64 hppa ~ppc x86 ~amd64-linux ~x86-linux ~x86-macos"
IUSE=""

DEPEND=""
RDEPEND=""

pkg_postinst() {
	distutils_pkg_postinst

	elog
	elog "This package does not install mod_scgi!"
	elog "Please install www-apache/mod_scgi if you need it."
	elog
}
