# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-electronics/cvs-repo/gentoo-x86/sci-electronics/electric/Attic/electric-8.05.ebuild,v 1.1 2007/07/29 13:36:35 calchan Exp $

inherit eutils java-pkg

DESCRIPTION="Complete Electronic Design Automation (EDA) system that can handle many forms of circuit design"
HOMEPAGE="http://www.gnu.org/software/electric/electric.html"
SRC_URI="mirror://gnu/electric/${PN}Binary-${PV}.jar"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=">=virtual/jre-1.6"

S="${WORKDIR}"

src_install() {
	java-pkg_dojar ${DISTDIR}/${PN}Binary-${PV}.jar
	newicon com/sun/electric/tool/user/help/helphtml/iconplug.png electric.png
	make_wrapper electric "java -jar /usr/share/electric/lib/${PN}Binary-${PV}.jar"
	make_desktop_entry electric "Electric VLSI Design System" electric.png "Application;Engineering;Electronics"
}
