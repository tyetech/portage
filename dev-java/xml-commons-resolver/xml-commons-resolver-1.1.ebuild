# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-java/cvs-repo/gentoo-x86/dev-java/xml-commons-resolver/Attic/xml-commons-resolver-1.1.ebuild,v 1.5 2004/11/30 21:44:59 swegener Exp $

inherit eutils java-pkg

DESCRIPTION="xml-commons is focussed on common code and guidelines for xml projects."
HOMEPAGE="http://xml.apache.org/commons/"
SRC_URI="mirror://apache/xml/commons/${P}.tar.gz"
DEPEND=">=virtual/jdk-1.3
		dev-java/ant"
LICENSE="Apache-1.1"
SLOT="0"
KEYWORDS="~x86 ~ppc ~amd64"
IUSE="doc"

src_compile() {
	cd src
	find org -name "*.java" ${exclude} | xargs javac || die "Failed to compile"
	find org -name "*.class" | xargs jar cmf manifest.resolver ${PN}.jar
}

src_install() {
	java-pkg_dojar src/${PN}.jar
	use doc && java-pkg_dohtml -r docs/ apidocs/
}
