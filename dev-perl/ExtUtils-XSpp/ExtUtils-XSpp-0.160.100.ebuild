# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/ExtUtils-XSpp/Attic/ExtUtils-XSpp-0.160.100.ebuild,v 1.1 2011/03/13 07:38:33 tove Exp $

EAPI=3

MODULE_AUTHOR=MBARBON
MODULE_VERSION=0.1601
inherit perl-module

DESCRIPTION="XS for C++"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND="virtual/perl-Module-Build
	test? ( dev-perl/Test-Differences
		dev-perl/Test-Base )"
RDEPEND=">=virtual/perl-ExtUtils-ParseXS-2.22.02"

SRC_TEST=do
