# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Moo/Moo-1.0.3.ebuild,v 1.2 2012/09/01 11:41:44 grobian Exp $

EAPI=4

MODULE_AUTHOR=ILMARI
MODULE_VERSION=1.000003
inherit perl-module

DESCRIPTION="Minimalist Object Orientation (with Moose compatiblity)"

SLOT="0"
KEYWORDS="~amd64 ~x86 ~ppc-aix ~ppc-macos ~x86-solaris"
IUSE="test"

RDEPEND="
	>=dev-perl/Class-Method-Modifiers-1.40.0
	>=dev-perl/Devel-GlobalDestruction-0.90.0
	>=dev-perl/Module-Runtime-0.12.0
	>=dev-perl/Role-Tiny-1.1.3
	>=dev-perl/strictures-1.1.1
"
DEPEND="${RDEPEND}
	test? (
		>=dev-perl/Test-Fatal-0.3.0
		>=virtual/perl-Test-Simple-0.96
	)
"

SRC_TEST=do
