# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Locale-Msgfmt/Attic/Locale-Msgfmt-0.14.ebuild,v 1.1 2010/02/15 16:33:31 tove Exp $

EAPI=2

MODULE_AUTHOR=SZABGAB
inherit perl-module

DESCRIPTION="Compile .po files to .mo files"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=""
DEPEND="virtual/perl-Module-Build
	test? ( dev-perl/Test-Pod )"

SRC_TEST=do
