# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-java/cvs-repo/gentoo-x86/dev-java/tomcat-servlet-api/tomcat-servlet-api-7.0.23.ebuild,v 1.5 2012/04/15 18:52:57 vapier Exp $

EAPI="2"
JAVA_PKG_IUSE="source"

inherit eutils java-pkg-2 java-ant-2

MY_A="apache-${P}-src"
MY_P="${MY_A/-servlet-api/}"
DESCRIPTION="Tomcat's Servlet API 3.0/JSP API 2.2 implementation"
HOMEPAGE="http://tomcat.apache.org/"
SRC_URI="mirror://apache/tomcat/tomcat-7/v${PV}/src/${MY_P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="3.0"
KEYWORDS="amd64 ~ia64 ppc ppc64 ~x86 ~x86-fbsd ~x86-freebsd ~amd64-linux ~x86-linux ~x64-solaris ~x86-solaris"
IUSE=""

DEPEND=">=virtual/jdk-1.6"
RDEPEND=">=virtual/jre-1.6"

S="${WORKDIR}/${MY_P}/"

java_prepare() {
	cp "${FILESDIR}/${SLOT}-build.xml" build.xml || die "Could not replace build.xml"
	rm -fR */*/build.xml
	einfo "Removing bundled jars and classes"
	find "${S}" '(' -name '*.class' -o -name '*.jar' ')' -delete
}

src_install() {
	java-pkg_dojar "${S}"/output/build/lib/*.jar
	use source && java-pkg_dosrc java/javax/servlet/
}
