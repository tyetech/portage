# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-apps/cvs-repo/gentoo-x86/sys-apps/di/Attic/di-3.9.ebuild,v 1.9 2004/07/15 01:43:26 agriffis Exp $

DESCRIPTION="Disk Information Utility"
SRC_URI="http://www.gentoo.com/di/${P}.tar.gz"
HOMEPAGE="http://www.gentoo.com/di/"
KEYWORDS="x86 amd64 ia64 ~ppc"
IUSE=""
LICENSE="as-is"
DEPEND=""
SLOT="0"

src_compile() {
	prefix=${D} ./Build || die
}

src_install () {
	doman di.1
	dobin di
	dosym /usr/bin/di /usr/bin/mi
	dodoc LICENSE README
}
