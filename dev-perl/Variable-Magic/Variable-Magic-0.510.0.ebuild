# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Variable-Magic/Variable-Magic-0.510.0.ebuild,v 1.2 2012/09/01 12:01:13 grobian Exp $

EAPI=4

MODULE_AUTHOR=VPIT
MODULE_VERSION=0.51
inherit perl-module

DESCRIPTION="Associate user-defined magic to variables from Perl"

SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86 ~ppc-aix ~x64-macos"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
	test? ( dev-perl/Test-Pod
		dev-perl/Test-Pod-Coverage )"

SRC_TEST=do
