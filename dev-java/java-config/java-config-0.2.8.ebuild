# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-java/cvs-repo/gentoo-x86/dev-java/java-config/Attic/java-config-0.2.8.ebuild,v 1.4 2003/04/01 21:34:01 drobbins Exp $

IUSE=""

S=${WORKDIR}/${P}
DESCRIPTION="Utility to change the Java Virtual Machine being used"
HOMEPAGE="http://www.gentoo.org/"
SRC_URI=""

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86 ~ppc ~sparc ~alpha"

DEPEND="virtual/glibc"

src_install () {
	dobin ${FILESDIR}/${PV}/java-config
	doman ${FILESDIR}/${PV}/java-config.1

 	insinto /etc/env.d
 	doins ${FILESDIR}/${PV}/30java-finalclasspath
}
