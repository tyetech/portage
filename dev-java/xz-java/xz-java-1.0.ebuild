# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-java/cvs-repo/gentoo-x86/dev-java/xz-java/xz-java-1.0.ebuild,v 1.3 2012/06/11 13:06:25 johu Exp $

EAPI=4

JAVA_PKG_IUSE="doc examples source"

inherit java-pkg-2 java-ant-2

DESCRIPTION="Implementation of xz data compression in pure java"
HOMEPAGE="http://tukaani.org/xz/java.html"
SRC_URI="http://tukaani.org/xz/${P}.zip"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="amd64 x86"

IUSE=""

RDEPEND=">=virtual/jre-1.4"
DEPEND=">=virtual/jdk-1.4
	app-arch/unzip"

EANT_DOC_TARGET="doc"

S=${WORKDIR}

java_prepare() {
	epatch "${FILESDIR}"/${PN}-stop-fetching-external-files.patch
}

src_install() {
	java-pkg_dojar build/jar/xz.jar
	use doc && java-pkg_dojavadoc build/doc
	use examples && java-pkg_doexamples src/*Demo.java
	use source && java-pkg_dosrc src/org
}
