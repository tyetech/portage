# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-java/cvs-repo/gentoo-x86/dev-java/ant-junit/Attic/ant-junit-1.7.0.ebuild,v 1.3 2007/01/22 17:04:57 corsair Exp $

inherit ant-tasks

KEYWORDS="~ppc64 ~x86 ~x86-fbsd"

DEPEND="=dev-java/junit-3*"
RDEPEND="${DEPEND}"

src_compile() {
	eant jar-junit
}
