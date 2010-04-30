# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/PPIx-Regexp/Attic/PPIx-Regexp-0.007.ebuild,v 1.1 2010/04/30 07:09:37 tove Exp $

EAPI=2

MODULE_AUTHOR=WYANT
inherit perl-module

DESCRIPTION="Represent a regular expression of some sort"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-perl/List-MoreUtils
	dev-perl/Readonly
	dev-perl/PPI
	dev-perl/Params-Util
	virtual/perl-Scalar-List-Utils"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build"

SRC_TEST=do
