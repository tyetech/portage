# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-java/cvs-repo/gentoo-x86/dev-java/jnr-x86asm/jnr-x86asm-1.0.2.ebuild,v 1.4 2012/08/09 21:29:26 johu Exp $

EAPI="4"

JAVA_PKG_IUSE="doc source"

inherit java-pkg-2 java-ant-2 vcs-snapshot

DESCRIPTION="A pure-java port of asmjit."
HOMEPAGE="https://github.com/jnr/jnr-x86asm"
SRC_URI="https://github.com/jnr/${PN}/tarball/${PV} -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="1.0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=virtual/jre-1.5"
DEPEND=">=virtual/jdk-1.5"

java_prepare() {
	cp "${FILESDIR}"/${PN}_maven-build.xml build.xml || die
}

JAVA_ANT_ENCODING="UTF-8"

EANT_EXTRA_ARGS="-Dmaven.build.finalName=${PN}"

src_install() {
	java-pkg_newjar target/${PN}.jar

	use doc && java-pkg_dojavadoc target/site/apidocs
	use source && java-pkg_dosrc src/main/java/*
}
