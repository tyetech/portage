# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-java/cvs-repo/gentoo-x86/dev-java/avalon-logkit/Attic/avalon-logkit-1.2.ebuild,v 1.6 2004/03/06 23:12:47 zx Exp $

DESCRIPTION="LogKit is an easy-to-use Java logging toolkit designed for secure, performance-oriented logging."
HOMEPAGE="http://avalon.apache.org/"
MY_P=${PN/avalon-logkit/LogKit}-${PV}
SRC_URI="mirror://apache/avalon/logkit/${PV}/LogKit-${PV}-bin.tar.gz"
DEPEND=">=virtual/jre-1.3"
RDEPEND=">=virtual/jre-1.3"
LICENSE="Apache-1.1"
SLOT="0"
KEYWORDS="x86 ppc sparc"
IUSE="doc"

src_install () {
	cd ${WORKDIR}/${MY_P}
	dojar *.jar || die "Unable to Install"
	use doc && dohtml -r docs/*
}
