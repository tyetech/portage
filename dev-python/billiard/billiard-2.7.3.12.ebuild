# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/billiard/billiard-2.7.3.12.ebuild,v 1.1 2012/08/14 07:17:55 iksaif Exp $

EAPI="4"

PYTHON_DEPEND="*:2.5"
RESTRICT_PYTHON_ABIS="2.4"
SUPPORT_PYTHON_ABIS="1"

inherit distutils

DESCRIPTION="Python multiprocessing fork"
HOMEPAGE="http://pypi.python.org/pypi/billiard https://github.com/celery/billiard"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	dev-python/setuptools"
