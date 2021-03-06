# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-java/cvs-repo/gentoo-x86/dev-java/freehep-graphicsio-tests/freehep-graphicsio-tests-2.1.1.ebuild,v 1.1 2010/01/28 17:49:40 weaver Exp $

JAVA_PKG_IUSE=""
GROUP_ID="org.freehep"
MAVEN2_REPOSITORIES="http://java.freehep.org/maven2"

inherit java-pkg-2 java-mvn-src

DESCRIPTION="High Energy Physics Java library - FreeHEP GraphicsIO Test Library"
HOMEPAGE="http://java.freehep.org/"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

CDEPEND="dev-java/freehep-export
	>=dev-java/freehep-graphicsio-2.1.1
	dev-java/junit
	dev-java/freehep-misc-deps
	dev-java/freehep-util
	dev-java/freehep-swing
	dev-java/freehep-graphics2d
	dev-java/freehep-io
	dev-java/freehep-export"
DEPEND=">=virtual/jdk-1.5
	${CDEPEND}"
RDEPEND=">=virtual/jre-1.5
	${CDEPEND}"
JAVA_GENTOO_CLASSPATH="freehep-export,freehep-graphicsio,junit,freehep-misc-deps,freehep-util,freehep-swing,freehep-graphics2d,freehep-io,freehep-export"
