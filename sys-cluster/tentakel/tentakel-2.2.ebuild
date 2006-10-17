# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-cluster/cvs-repo/gentoo-x86/sys-cluster/tentakel/Attic/tentakel-2.2.ebuild,v 1.2 2006/10/17 03:11:24 tsunam Exp $

inherit distutils eutils

DESCRIPTION="Execute commands on many hosts in parallel"
SRC_URI="mirror://sourceforge/${PN}/${P}.tgz"
HOMEPAGE="http://tentakel.biskalar.de/"
DEPEND="dev-lang/python"
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86"
IUSE=""
S=${WORKDIR}/${P}/py

src_unpack() {
	unpack ${A}
	cd ${WORKDIR}/${P}
	epatch ${FILESDIR}/${P}-manpath.patch
}
