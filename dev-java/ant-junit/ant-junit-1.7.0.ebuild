# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-java/cvs-repo/gentoo-x86/dev-java/ant-junit/Attic/ant-junit-1.7.0.ebuild,v 1.1 2007/01/21 23:13:40 caster Exp $

inherit ant-tasks

KEYWORDS="~x86"

DEPEND="=dev-java/junit-3*"
RDEPEND="${DEPEND}"

src_compile() {
	eant jar-junit
}
