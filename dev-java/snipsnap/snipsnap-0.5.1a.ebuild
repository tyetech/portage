# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-java/cvs-repo/gentoo-x86/dev-java/snipsnap/Attic/snipsnap-0.5.1a.ebuild,v 1.3 2004/06/24 22:42:49 agriffis Exp $

DESCRIPTION="A blog/wiki personal content management system"
HOMEPAGE="http://snipsnap.org"
SRC_URI="ftp://snipsnap.org/${PN}/${P}-20040123.tgz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 ~ppc"
IUSE=""
DEPEND=">=virtual/jre-1.3"

src_install() {
	dodir /opt/${PN}
	cp -pR * ${D}/opt/${PN}

	exeinto /opt/${PN}
	newexe ${FILESDIR}/${PV}-run.sh run.sh
	exeinto /etc/init.d
	newexe ${FILESDIR}/${PV}-snipsnap snipsnap
}
