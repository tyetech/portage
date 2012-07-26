# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Linux-DesktopFiles/Attic/Linux-DesktopFiles-0.06.ebuild,v 1.1 2012/07/26 15:59:46 hasufell Exp $

EAPI=4

MODULE_AUTHOR="TRIZEN"
inherit perl-module

DESCRIPTION="Perl module to get and parse the Linux .desktop files"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="virtual/perl-Module-Build"

SRC_TEST="do"
