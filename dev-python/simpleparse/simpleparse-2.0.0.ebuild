# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/simpleparse/Attic/simpleparse-2.0.0.ebuild,v 1.3 2004/06/25 01:49:51 agriffis Exp $

IUSE=""

inherit distutils

MY_P="SimpleParse-${PV}"
S=${WORKDIR}/${MY_P}

DESCRIPTION="A Parser Generator for mxTextTools."
SRC_URI="mirror://sourceforge/simpleparse/${MY_P}.zip"
HOMEPAGE="http://simpleparse.sourceforge.net"
DEPEND="virtual/python
	dev-python/egenix-mx-base"
LICENSE="as-is"
SLOT="0"
KEYWORDS="~x86 ~sparc ~alpha ~ppc"

src_install() {
	distutils_src_install --install-data=/usr/share/doc/${PF}
}
