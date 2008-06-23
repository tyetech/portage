# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/pyasn1/Attic/pyasn1-0.0.8a.ebuild,v 1.1 2008/06/23 06:30:39 dev-zero Exp $

inherit distutils

KEYWORDS="~amd64 ~ia64 ~ppc ~sparc ~x86"

DESCRIPTION="ASN.1 types and codecs (BER, CER, DER) implementation."
HOMEPAGE="http://pyasn1.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"
LICENSE="BSD"
SLOT="0"
IUSE=""

DEPEND=""
RDEPEND=""

src_install() {
	DOCS="CHANGES"
	distutils_src_install
	dohtml doc/*
	insinto /usr/share/doc/${PF}
	doins -r examples
}

src_test() {
	export PYTHONPATH="${PYTHONPATH}:${S}/build/lib"
	python_version
	"${python}" test/suite.py || die "tests failed"
}
