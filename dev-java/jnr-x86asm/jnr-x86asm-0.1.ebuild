# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-java/cvs-repo/gentoo-x86/dev-java/jnr-x86asm/jnr-x86asm-0.1.ebuild,v 1.4 2010/06/30 15:23:59 phajdan.jr Exp $

EAPI=3

JAVA_PKG_IUSE="doc source"
WANT_ANT_TASKS="ant-nodeps"

inherit java-pkg-2 java-ant-2

DESCRIPTION="A pure-java port of asmjit."
HOMEPAGE="http://github.com/wmeissner/jnr-x86asm/"
SRC_URI="http://github.com/wmeissner/${PN}/tarball/0.1 -> ${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="amd64 x86"

IUSE=""

COMMON_DEP=""

RDEPEND=">=virtual/jre-1.5
	${COMMON_DEP}"
DEPEND=">=virtual/jdk-1.5
	app-arch/unzip
	${COMMON_DEP}"

src_unpack() {
	unpack ${A}
	cd "${WORKDIR}" || die
	mv w* "${P}" || die
}

src_install() {
	java-pkg_dojar "dist/${PN}.jar"
	use doc && java-pkg_dojavadoc dist/javadoc
	use source && java-pkg_dosrc src
}
