# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/ipython/Attic/ipython-0.6.6.ebuild,v 1.1 2004/12/19 23:53:32 kloeri Exp $

inherit distutils

DESCRIPTION="An advanced interactive shell for Python."
SRC_URI="http://ipython.scipy.org/dist/${P}.tar.gz"
HOMEPAGE="http://ipython.scipy.org/"
LICENSE="PYTHON"
SLOT="0"
IUSE="gnuplot"
KEYWORDS="~x86 ~amd64 ~ppc"
DEPEND="virtual/python"
RDEPEND="${DEPEND}
		gnuplot? ( dev-python/gnuplot-py )"
DOCS="doc/ChangeLog"
