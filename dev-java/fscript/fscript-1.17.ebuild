# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-java/cvs-repo/gentoo-x86/dev-java/fscript/fscript-1.17.ebuild,v 1.3 2007/06/10 10:13:56 philantrop Exp $

JAVA_PKG_IUSE="doc examples source"

inherit java-pkg-2 java-ant-2

DESCRIPTION="Java based scripting engine designed to be embedded into other Java applications."
HOMEPAGE="http://fscript.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tgz"
LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=">=virtual/jdk-1.4"
RDEPEND=">=virtual/jre-1.4"

src_unpack() {
	unpack ${A}
	rm -v "${S}/FScript.jar" || die
}

EANT_DOC_TARGET="jdoc"

src_test() {
	eant test
}

src_install() {
	java-pkg_dojar *.jar

	dodoc CREDITS README VERSION || die
	# docs/* contains not only javadoc:
	use doc && java-pkg_dohtml -r docs/*
	use examples && java-pkg_doexamples examples/
	use source && java-pkg_dosrc src/*

}
