# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/ipython/Attic/ipython-0.6.11.ebuild,v 1.1 2005/02/23 05:18:54 fserb Exp $

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
