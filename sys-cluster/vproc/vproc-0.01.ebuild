# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-cluster/cvs-repo/gentoo-x86/sys-cluster/vproc/Attic/vproc-0.01.ebuild,v 1.2 2004/06/24 22:41:35 agriffis Exp $

DESCRIPTION="vserver proc-security manipulator"
SRC_URI="http://www.13thfloor.at/vserver/s_release/v1.26/${P}.tar.bz2"
HOMEPAGE="http://www.13thfloor.at/"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE=""
DEPEND=""

src_compile() {
	make || die "compile failed"
}

src_install () {
	dosbin vproc
}
