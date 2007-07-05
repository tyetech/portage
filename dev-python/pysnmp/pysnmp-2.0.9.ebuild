# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/pysnmp/Attic/pysnmp-2.0.9.ebuild,v 1.2 2007/07/05 07:07:09 lucass Exp $

inherit distutils

DESCRIPTION="SNMP v1/v2c/v3 engine written in Python."
HOMEPAGE="http://pysnmp.sf.net/"
SRC_URI="mirror://sourceforge/pysnmp/${P}.tar.gz"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~sparc ~ppc"
IUSE=""

src_install() {
	distutils_src_install

	dodoc CHANGES
	dohtml html/*
	insinto /usr/share/doc/${PF}
	doins -r examples
}
