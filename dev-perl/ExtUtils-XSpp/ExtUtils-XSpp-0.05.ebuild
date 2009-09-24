# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/ExtUtils-XSpp/Attic/ExtUtils-XSpp-0.05.ebuild,v 1.1 2009/09/24 06:16:23 tove Exp $

EAPI=2

MODULE_AUTHOR=MBARBON
inherit perl-module

DESCRIPTION="XS for C++"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND="virtual/perl-Module-Build
	test? ( dev-perl/Test-Differences
		dev-perl/Test-Base )"
RDEPEND=""

SRC_TEST=do
