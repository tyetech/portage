# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Class-Accessor-Grouped/Class-Accessor-Grouped-0.100.60.ebuild,v 1.2 2012/09/01 11:16:44 grobian Exp $

EAPI=4

MODULE_AUTHOR=CLACO
MODULE_VERSION=0.10006
inherit perl-module

DESCRIPTION="Lets you build groups of accessors"

SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86 ~ppc-aix ~ppc-macos ~x86-solaris"
IUSE="test"

RDEPEND="dev-perl/Class-Inspector
	>=dev-perl/Class-XSAccessor-1.130
	>=dev-perl/Sub-Name-0.05"
DEPEND="${RDEPEND}
	test? ( >=dev-perl/Test-Exception-0.31
		>=virtual/perl-Test-Simple-0.94 )"

SRC_TEST=do
