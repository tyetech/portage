# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-zope/cvs-repo/gentoo-x86/net-zope/zmysqlda/Attic/zmysqlda-2.0.8-r1.ebuild,v 1.4 2006/01/27 02:51:11 vapier Exp $

inherit zproduct

DESCRIPTION="A MySQL Database Adapter(DA) for zope"
HOMEPAGE="http://sourceforge.net/projects/mysql-python"
SRC_URI="mirror://sourceforge/mysql-python/ZMySQLDA-${PV}.tar.gz"

LICENSE="|| ( GPL-2 CNRI )"
KEYWORDS="~ppc ~x86"

RDEPEND=">=dev-python/mysql-python-1.0"

S=${WORKDIR}/lib/python/Products/

ZPROD_LIST="ZMySQLDA"
