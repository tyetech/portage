# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-db/cvs-repo/gentoo-x86/dev-db/db-je/db-je-3.3.75.ebuild,v 1.2 2009/03/09 22:33:09 maekke Exp $

JAVA_PKG_IUSE="doc source"

inherit java-pkg-2 java-ant-2

DESCRIPTION="Berkeley DB JE is a high performance, transactional storage engine written entirely in Java"
HOMEPAGE="http://www.oracle.com/database/berkeley-db/je/index.html"
SRC_URI="http://download.oracle.com/berkeley-db/${P/db-/}.tar.gz"

LICENSE="as-is"
SLOT="3.3"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=">=virtual/jdk-1.5"
RDEPEND=">=virtual/jre-1.5"
S=${WORKDIR}/${P/db-/}

src_unpack() {
	unpack ${A}
	cd "${S}" || die
	epatch "${FILESDIR}"/${P}-optional-test.patch
	rm -rf docs
	cd lib || die
	rm -v *jar || die
	java-pkg_jar-from --build-only ant-core ant.jar
}

EANT_DOC_TARGET="javadoc-all"
EANT_EXTRA_ARGS="-Dnotest=true"

src_install() {
	java-pkg_dojar build/lib/je.jar
	use doc && java-pkg_dojavadoc docs
	use source && java-pkg_dosrc src/com
}
