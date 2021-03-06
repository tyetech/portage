# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Test-Differences/Test-Differences-0.610.0.ebuild,v 1.7 2012/10/05 15:44:18 ranger Exp $

EAPI=4

MODULE_AUTHOR=OVID
MODULE_VERSION=0.61
inherit perl-module

DESCRIPTION="Test strings and data structures and show differences if not ok"

SLOT="0"
KEYWORDS="amd64 hppa ppc x86"
IUSE="test"

RDEPEND="dev-perl/Text-Diff
	>=virtual/perl-Data-Dumper-2.126.0"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build
	test? (
		dev-perl/Test-Pod
		dev-perl/Test-Pod-Coverage
	)
"

SRC_TEST=do
