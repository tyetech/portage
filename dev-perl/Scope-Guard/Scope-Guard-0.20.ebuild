# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Scope-Guard/Attic/Scope-Guard-0.20.ebuild,v 1.1 2010/05/17 05:26:03 tove Exp $

EAPI=2

MODULE_AUTHOR=CHOCOLATE
inherit perl-module

DESCRIPTION="Lexically scoped resource management"

SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86 ~x86-solaris"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
	test? ( dev-perl/Test-Pod
		dev-perl/Test-Pod-Coverage )"

SRC_TEST=do
