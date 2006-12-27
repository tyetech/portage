# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/cherrypy/Attic/cherrypy-3.0.0.ebuild,v 1.1 2006/12/27 02:20:22 dev-zero Exp $

inherit distutils

MY_P=CherryPy-${PV}

DESCRIPTION="CherryPy is a pythonic, object-oriented web development framework."
SRC_URI="http://download.cherrypy.org/cherrypy/${PV}/${MY_P}.tar.gz"
HOMEPAGE="http://www.cherrypy.org/"
IUSE=""
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~x86"
LICENSE="BSD"

DEPEND=""
RDEPEND=""

S=${WORKDIR}/${MY_P}

src_test() {
	cd cherrypy/test
	python test.py --dumb || die "Test failed."
}
