# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/ipython/Attic/ipython-0.7.1.ebuild,v 1.1 2006/02/04 01:28:35 marienz Exp $

inherit distutils

MY_P="${P}.fix1"
S="${WORKDIR}/${MY_P}"

DESCRIPTION="An advanced interactive shell for Python."
HOMEPAGE="http://ipython.scipy.org/"
SRC_URI="http://ipython.scipy.org/dist/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~s390 ~x86"
IUSE="gnuplot"

DEPEND=">=virtual/python-2.3"
RDEPEND="${DEPEND}
	gnuplot? ( dev-python/gnuplot-py )"

DOCS="doc/ChangeLog"
