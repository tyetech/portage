# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-zope/cvs-repo/gentoo-x86/net-zope/zpsycopgda/Attic/zpsycopgda-1.1.15.ebuild,v 1.1 2004/10/23 23:01:03 lanius Exp $

inherit zproduct
S="${WORKDIR}/psycopg-${PV}/"

DESCRIPTION="PostgreSQL database adapter for Zope."
SRC_URI="http://initd.org/pub/software/psycopg/psycopg-${PV}.tar.gz"
HOMEPAGE="http://www.initd.org/software/psycopg.py"
RDEPEND=">=dev-python/psycopg-${PV}
	${RDEPEND}"
KEYWORDS="x86 ~ppc"
LICENSE="GPL-2"

ZPROD_LIST="ZPsycopgDA"
IUSE=""

src_compile()
{
	rm -f * >& /dev/null
	rm -fR debian/ doc/ tests/
}
