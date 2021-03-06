# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-news/cvs-repo/gentoo-x86/net-news/rawdog/rawdog-2.13.ebuild,v 1.9 2011/01/07 00:32:29 ranger Exp $

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils

DESCRIPTION="Rawdog - RSS Aggregator Without Delusions Of Grandeur"
HOMEPAGE="http://offog.org/code/rawdog.html http://pypi.python.org/pypi/rawdog"
SRC_URI="http://offog.org/files/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 hppa ia64 ppc s390 sparc x86"
IUSE=""

DEPEND=""
RDEPEND=""

DOCS="NEWS PLUGINS config style.css"
PYTHON_MODNAME="rawdoglib"
