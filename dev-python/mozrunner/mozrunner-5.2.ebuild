# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/mozrunner/mozrunner-5.2.ebuild,v 1.2 2012/04/22 18:33:29 floppym Exp $

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.* *-jython"

inherit distutils

DESCRIPTION="Reliable start/stop/configuration of Mozilla Applications (Firefox, Thunderbird, etc.)"
HOMEPAGE="http://pypi.python.org/pypi/mozrunner"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="|| ( MPL-1.1 GPL-2 LGPL-2.1 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/simplejson
	dev-python/mozinfo
	dev-python/mozprocess
	dev-python/mozprofile
	dev-python/setuptools"
RDEPEND="${DEPEND}"
