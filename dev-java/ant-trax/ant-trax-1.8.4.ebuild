# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-java/cvs-repo/gentoo-x86/dev-java/ant-trax/ant-trax-1.8.4.ebuild,v 1.4 2012/08/23 08:27:57 xmw Exp $

EAPI="4"

ANT_TASK_DEPNAME=""
ANT_TASK_DISABLE_VM_DEPS="true"

inherit ant-tasks

DESCRIPTION="Apache Ant .jar with optional tasks depending on XML transformer (Deprecated!)"
KEYWORDS="amd64 ~ia64 ppc ~ppc64 x86 ~x86-fbsd ~x64-freebsd ~x86-freebsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"
IUSE=""

DEPEND=">=virtual/jdk-1.4" #jar

src_compile() {
	# the classes were moved to ant-core in 1.8.1, this is just for compatibility
	mkdir -p build/lib/empty && cd build/lib/empty || die
	jar -cf ../${PN}.jar .
}

pkg_postinst() {
	elog "Upstream has removed ant-trax.jar as of 1.8.1 and moved the classes to ant.jar"
	elog "This package thus installs an empty jar for compatibility"
	elog "and will be removed once reverse dependencies are transitioned."
}
