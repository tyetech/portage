# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-java/cvs-repo/gentoo-x86/dev-java/jicmp/jicmp-1.0.2.ebuild,v 1.5 2009/03/02 21:49:13 serkan Exp $

EAPI="2"

JAVA_PKG_IUSE="doc source"

inherit eutils autotools base java-pkg-2

DESCRIPTION="Java Interface to Tobias Oetiker's RRDtool"
SRC_URI="mirror://sourceforge/opennms/${P}.tar.gz"
HOMEPAGE="http://www.opennms.org/"
KEYWORDS="~amd64 ~x86"
LICENSE="GPL-2"

SLOT="0"

RDEPEND=">=virtual/jre-1.5"
DEPEND=">=virtual/jdk-1.5"

src_prepare() {
	sed -i -e "s/-Werror//g" configure.ac || die "sed failed"
	eautoreconf
}

src_compile() {
	base_src_compile
	if use doc; then
		javadoc -d javadoc $(find org -name "*.java") || die "Javadoc failed"
	fi
}

src_install() {
	java-pkg_newjar *.jar
	java-pkg_doso .libs/*.so
	use source && java-pkg_dosrc org
	use doc && java-pkg_dojavadoc javadoc
}
