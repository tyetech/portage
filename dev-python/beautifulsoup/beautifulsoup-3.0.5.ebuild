# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/beautifulsoup/Attic/beautifulsoup-3.0.5.ebuild,v 1.1 2008/02/23 18:06:55 dev-zero Exp $

NEED_PYTHON="2.3"

inherit distutils

MY_P=BeautifulSoup-${PV}

DESCRIPTION="HTML/XML parser for quick-turnaround applications like screen-scraping."
HOMEPAGE="http://www.crummy.com/software/BeautifulSoup/"
SRC_URI="http://www.crummy.com/software/BeautifulSoup/download/${MY_P}.tar.gz"
LICENSE="PSF-2.3"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86 ~x86-fbsd"
IUSE=""

S=${WORKDIR}/${MY_P}

src_test() {
	PYTHONPATH="." "${python}" BeautifulSoupTests.py || die "tests failed"
}
