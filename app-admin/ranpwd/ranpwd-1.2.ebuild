# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-admin/cvs-repo/gentoo-x86/app-admin/ranpwd/ranpwd-1.2.ebuild,v 1.6 2010/04/15 21:23:22 idl0r Exp $

EAPI=3

DESCRIPTION="Generate random passwords using the in-kernel cryptographically secure random number generator"
HOMEPAGE="http://www.kernel.org/pub/software/utils/admin/ranpwd/"
SRC_URI="mirror://kernel/software/utils/admin/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=""

src_test() {
	einfo "generating random passwords"
	for a in 1 2 3 4 5 6 7 8 9
	do
		./ranpwd $(($a * 10))
	done
}

src_install() {
	emake INSTALLROOT="${D}" install || die
}
