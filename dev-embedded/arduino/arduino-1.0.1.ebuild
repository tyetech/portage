# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-embedded/cvs-repo/gentoo-x86/dev-embedded/arduino/arduino-1.0.1.ebuild,v 1.1 2012/09/03 21:07:08 miknix Exp $

EAPI=4
JAVA_PKG_IUSE="doc examples"

inherit eutils java-pkg-2 java-ant-2

DESCRIPTION="An open-source AVR electronics prototyping platform"
HOMEPAGE="http://arduino.cc/ http://arduino.googlecode.com/"
SRC_URI="http://arduino.googlecode.com/files/${P}-src.tar.gz"
LICENSE="GPL-2 LGPL-2 CCPL-Attribution-ShareAlike-3.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"
RESTRICT="strip binchecks"
IUSE=""

RDEPEND="dev-embedded/avrdude
dev-embedded/uisp
>dev-java/rxtx-2.1
sys-devel/crossdev
>=virtual/jre-1.5"

DEPEND="dev-java/jna
>=virtual/jdk-1.5"

EANT_GENTOO_CLASSPATH="jna,rxtx-2"
EANT_EXTRA_ARGS="-Dversion=${PV}"
EANT_BUILD_TARGET="build"
JAVA_ANT_REWRITE_CLASSPATH="yes"

java_prepare() {
	# Remove the libraries to ensure the system
	# libraries are used
	rm build/linux/dist/tools/avrdude* || die
	rm build/linux/dist/lib/* || die
	rm app/lib/* || die
	rm app/pde.jar || die
	# Patch build/build.xml - remove local jar files
	# for rxtx and ecj (use system wide versions)
	epatch "${FILESDIR}"/${P}-build.xml.patch

	# Patch launcher script to include rxtx class/ld paths
	epatch "${FILESDIR}"/${P}-script.patch
}

src_compile() {
	eant -f core/build.xml
	EANT_GENTOO_CLASSPATH_EXTRA="../core/core.jar"
	eant -f app/build.xml
	eant "${EANT_EXTRA_ARGS}" -f build/build.xml
}

src_install() {
	cd "${S}"/build/linux/work || die
	java-pkg_dojar lib/core.jar lib/pde.jar
	java-pkg_dolauncher ${PN} --pwd /usr/share/${PN} --main processing.app.Base
	use examples && java-pkg_doexamples examples

	if use doc; then
		dodoc revisions.txt "${S}"/readme.txt
		dohtml -r reference
		java-pkg_dojavadoc "${S}"/build/javadoc
	fi

	insinto "/usr/share/${PN}/"
	doins -r hardware libraries
	fowners -R root:uucp "/usr/share/${PN}/hardware"

	insinto "/usr/share/${PN}/lib"
	doins -r lib/*.txt lib/theme lib/*.jpg

	# use system avrdude
	# patching class files is too hard
	dosym /usr/bin/avrdude "/usr/share/${PN}/hardware/tools/avrdude"
	dosym /etc/avrdude.conf "/usr/share/${PN}/hardware/tools/avrdude.conf"
}

pkg_postinst() {
	[ ! -x /usr/bin/avr-g++ ] && ewarn "Missing avr-g++; you need to crossdev -s4 avr"
}
