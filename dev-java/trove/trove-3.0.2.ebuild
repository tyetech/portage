# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-java/cvs-repo/gentoo-x86/dev-java/trove/trove-3.0.2.ebuild,v 1.5 2012/06/22 15:37:02 ranger Exp $

EAPI="2"
JAVA_PKG_IUSE="doc source"

inherit java-pkg-2 java-ant-2

DESCRIPTION="GNU Trove: High performance collections for Java."
SRC_URI="mirror://sourceforge/trove4j/${P}.tar.gz"
HOMEPAGE="http://trove4j.sourceforge.net"
LICENSE="LGPL-2.1"
IUSE=""
SLOT="3"
KEYWORDS="amd64 ppc ppc64 x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos"
RDEPEND=">=virtual/jre-1.5"
DEPEND=">=virtual/jdk-1.5"
S="${WORKDIR}/${PV}"

java_prepare() {
	rm -v lib/*.jar
	rm -fr javadocs/*
}

src_install() {
	java-pkg_newjar output/lib/*.jar
	dodoc *.txt || die
	use doc && java-pkg_dojavadoc output/javadocs
	use source && java-pkg_dosrc src/* output/gen_src/*
}
