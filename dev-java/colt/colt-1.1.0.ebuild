# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-java/cvs-repo/gentoo-x86/dev-java/colt/Attic/colt-1.1.0.ebuild,v 1.6 2004/10/20 05:22:31 absinthe Exp $

inherit java-pkg

DESCRIPTION="Colt provides a set of Open Source Libraries for High Performance Scientific and Technical Computing in Java."
SRC_URI="http://dsd.lbl.gov/~hoschek/colt-download/releases/${P}.zip"
HOMEPAGE="http://www-itg.lbl.gov/~hoschek/colt/"
LICENSE="colt"
IUSE="doc jikes"
SLOT="0"
KEYWORDS="x86 ~sparc ~ppc ~amd64"

DEPEND=">=virtual/jdk-1.4
		dev-java/ant
		jikes? ( dev-java/jikes )"

RDEPEND=">=virtual/jdk-1.4"

S=${WORKDIR}/${PN}

src_compile() {
	local antflags="javac"
	use jikes && antflags="${antflags} -Dbuild.compiler=jikes"
	ant ${antflags} jar || die "compile problem"
	use doc && ant javadoc
}

src_install() {
	java-pkg_dojar lib/*.jar
	dohtml README.html
	use doc && java-pkg_dohtml -r doc/*
}
