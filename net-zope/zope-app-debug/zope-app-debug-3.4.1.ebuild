# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-zope/cvs-repo/gentoo-x86/net-zope/zope-app-debug/Attic/zope-app-debug-3.4.1.ebuild,v 1.6 2010/12/05 18:49:28 arfrever Exp $

EAPI="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.* *-jython"

inherit distutils

MY_PN="${PN//-/.}"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Zope Debug Mode"
HOMEPAGE="http://pypi.python.org/pypi/zope.app.debug"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="net-zope/zope-app-appsetup
	net-zope/zope-app-publication
	net-zope/zope-publisher"
DEPEND="${RDEPEND}
	dev-python/setuptools"

S="${WORKDIR}/${MY_P}"

PYTHON_MODNAME="${PN//-//}"
DOCS="CHANGES.txt README.txt"
