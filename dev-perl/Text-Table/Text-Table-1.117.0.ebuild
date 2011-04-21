# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Text-Table/Attic/Text-Table-1.117.0.ebuild,v 1.1 2011/04/21 11:37:46 tove Exp $

EAPI=4

MODULE_AUTHOR=SHLOMIF
MODULE_VERSION=1.117
inherit perl-module

DESCRIPTION="Organize Data in Tables"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=">=dev-perl/Text-Aligner-0.05"
DEPEND="${RDEPEND}
	test? (
		dev-perl/Test-Pod
		dev-perl/Test-Pod-Coverage
	)
"

SRC_TEST="do"
