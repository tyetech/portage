# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-util/cvs-repo/gentoo-x86/dev-util/qmtest/Attic/qmtest-2.4.ebuild,v 1.3 2008/05/02 17:16:20 kanaka Exp $

inherit distutils

DESCRIPTION="CodeSourcery's test harness system"
HOMEPAGE="http://www.codesourcery.com/qmtest/"
SRC_URI="http://www.codesourcery.com/public/${PN}/${PF}/${PF}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~mips"
IUSE=""

DEPEND="dev-lang/python"

src_install() {
	distutils_src_install
	find "${D}" -name config.py -print0 | xargs -0 sed -i "s:${D}:/usr:"
}
