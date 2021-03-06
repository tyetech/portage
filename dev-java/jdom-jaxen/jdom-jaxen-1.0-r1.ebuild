# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-java/cvs-repo/gentoo-x86/dev-java/jdom-jaxen/jdom-jaxen-1.0-r1.ebuild,v 1.12 2012/04/15 18:16:41 vapier Exp $

JAVA_PKG_IUSE=""

inherit base java-pkg-2

MY_PN="jdom"

DESCRIPTION="Jaxen binding for jdom."
HOMEPAGE="http://www.jdom.org"
SRC_URI="http://www.jdom.org/dist/source/${MY_PN}-${PV}.tar.gz"

LICENSE="JDOM"
SLOT="${PV}"
KEYWORDS="amd64 ~ia64 ppc ppc64 x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~sparc-solaris ~x86-solaris"

IUSE=""

COMMON_DEP="~dev-java/jdom-${SLOT}
			=dev-java/jaxen-1.1*
			dev-java/saxpath"

RDEPEND=">=virtual/jre-1.4
		${COMMON_DEP}"
DEPEND=">=virtual/jdk-1.4
		app-arch/unzip
		${COMMON_DEP}"

S="${WORKDIR}/${MY_PN}-${PV}"

src_compile() {
	cd "${S}/src/java/org/jdom/xpath/"
	mv JaxenXPath.java JaxenXPath.java.bak
	sed 's/SAXPathException/Exception/g' JaxenXPath.java.bak > JaxenXPath.java

	cd "${S}"

	mkdir -p "${S}/build/org/jdom/xpath" || die "Unable to create dir."
	ejavac -d "${S}/build/" \
		-classpath $(java-config -p jdom-${SLOT},jaxen-1.1,saxpath) \
		src/java/org/jdom/xpath/JaxenXPath.java

	jar cf jdom-jaxen.jar -C build org || die "Failed to create jar."
}

src_install() {
	java-pkg_dojar "${PN}.jar"
}
