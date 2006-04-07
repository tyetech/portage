# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-java/cvs-repo/gentoo-x86/dev-java/maven-bin/Attic/maven-bin-2.0.2.ebuild,v 1.2 2006/04/07 21:50:07 wormo Exp $

inherit java-pkg

MY_PN=${PN%%-bin}
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Project Management and Comprehension Tool for Java"
SRC_URI="mirror://apache/${MY_PN}/binaries/${MY_P}-bin.tar.bz2"
HOMEPAGE="http://maven.apache.org/"
LICENSE="Apache-2.0"
SLOT="2.0"
KEYWORDS="~amd64 ~x86 ~ppc"

RDEPEND=">=virtual/jdk-1.3"

IUSE=""

S="${WORKDIR}/${MY_P}"

MAVEN=${PN}-${SLOT}
MAVEN_SHARE="/usr/share/${MAVEN}"

src_unpack() {
	unpack ${A}

	rm ${S}/bin/*.bat
}

# TODO we should use jars from packages, instead of what is bundled
src_install() {
	dodir ${MAVEN_SHARE}
	cp -Rp bin conf core lib ${D}/${MAVEN_SHARE}

	dodoc NOTICE.txt README.txt

	dodir /usr/bin
	dosym ${MAVEN_SHARE}/bin/mvn /usr/bin/mvn
}
