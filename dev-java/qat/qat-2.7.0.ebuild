# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-java/cvs-repo/gentoo-x86/dev-java/qat/Attic/qat-2.7.0.ebuild,v 1.3 2004/03/07 02:45:00 zx Exp $

DESCRIPTION="Quality Assurance Tester - A distributed test harnass."
SRC_URI="mirror://sourceforge/qat/qat-${PV}.zip"
HOMEPAGE="http://qat.sourceforge.net"
LICENSE="sun-csl"
SLOT="0"
KEYWORDS="x86 ~sparc"
DEPEND="virtual/glibc
	>=virtual/jdk-1.3"
RDEPEND=">=virtual/jdk-1.3"
IUSE=""

src_install() {
	dojar lib/*.jar
	dohtml -r doc/*
	dohtml -r specification/*
	cp -R examples ${D}/usr/share/doc/${P}/
}

