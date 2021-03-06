# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-java/cvs-repo/gentoo-x86/dev-java/werken-xpath/werken-xpath-0.9.4_beta-r1.ebuild,v 1.10 2012/02/18 22:02:28 caster Exp $

EAPI="2"
JAVA_PKG_IUSE="doc source"
WANT_ANT_TASKS="ant-antlr"

inherit java-pkg-2 java-ant-2 eutils versionator

MY_PN=${PN//-/.}
MY_PV=$(replace_version_separator 3 '-')
MY_P="${MY_PN}-${MY_PV}"
DESCRIPTION="W3C XPath-Rec implementation for DOM4J"
HOMEPAGE="http://sourceforge.net/projects/werken-xpath/"
SRC_URI="mirror://gentoo/${MY_P}-src.tar.gz"
# This tarball was acquired from jpackage's src rpm of the package by the same
# name

LICENSE="werken.xpath"
SLOT="0"
KEYWORDS="amd64 ppc x86 ~x86-fbsd"

IUSE=""

# need the versioned atom to get keep ensure dep happy
COMMON_DEP="
	~dev-java/jdom-1.0_beta9:1.0_beta9
	>=dev-java/antlr-2.7.7:0[java]"
DEPEND=">=virtual/jdk-1.4
	${COMMON_DEP}"
RDEPEND=">=virtual/jre-1.4
	${COMMON_DEP}"

S="${WORKDIR}/${MY_PN}"

java_prepare() {
	# Courtesy of JPackages :)
	epatch "${FILESDIR}/${P}-jpp-compile.patch"
	epatch "${FILESDIR}/${P}-jpp-jdom.patch"
	epatch "${FILESDIR}/${P}-jpp-tests.patch"
	epatch "${FILESDIR}/${P}-gentoo.patch"

	cd "${S}/lib"
	# In here we have ant starter scripts
	rm -fr bin
	rm -f *.jar

	# compile target needs these
	java-pkg_jar-from jdom-1.0_beta9
	java-pkg_jar-from antlr
}

src_compile() {
	local antflags="package"

	# java.class.path is used by the prepare.grammars target that
	# runs antlr
	local jdomjars="$(java-pkg_getjars jdom-1.0_beta9)"
	local antlrjars="$(java-pkg_getjars antlr)"
	local antflags="${antflags} -Djava.class.path=${jdomjars}:${antlrjars}"

	use doc && antflags="${antflags} javadoc -Dbuild.javadocs=build/api"

	eant ${antflags} || die "compile failed"
}

src_install() {
	java-pkg_dojar build/${MY_PN}.jar

	dodoc README TODO LIMITATIONS || die
	use doc && java-pkg_dojavadoc build/api
	use source && java-pkg_dosrc src/*
}
