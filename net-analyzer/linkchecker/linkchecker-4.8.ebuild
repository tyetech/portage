# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/linkchecker/Attic/linkchecker-4.8.ebuild,v 1.3 2008/07/02 16:29:34 ranger Exp $

inherit distutils

DESCRIPTION="LinkChecker can check HTML documents for broken links."
HOMEPAGE="http://linkchecker.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ppc ~x86"
IUSE=""

DEPEND=">=dev-lang/python-2.4"

RESTRICT="test"
