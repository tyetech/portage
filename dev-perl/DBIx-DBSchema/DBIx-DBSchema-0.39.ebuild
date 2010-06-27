# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/DBIx-DBSchema/Attic/DBIx-DBSchema-0.39.ebuild,v 1.4 2010/06/27 19:02:49 nixnut Exp $

EAPI=2

MODULE_AUTHOR=IVAN
inherit perl-module

DESCRIPTION="Database-independent schema objects"

SLOT="0"
KEYWORDS="alpha amd64 ~hppa ia64 ppc sparc x86"
IUSE=""

RDEPEND="dev-perl/DBI
	dev-perl/FreezeThaw
	virtual/perl-Storable"
DEPEND="${RDEPEND}"

SRC_TEST="do"
