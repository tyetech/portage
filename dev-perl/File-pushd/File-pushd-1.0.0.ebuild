# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/File-pushd/Attic/File-pushd-1.0.0.ebuild,v 1.1 2011/08/30 15:33:21 tove Exp $

EAPI=4

MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=1.00
inherit perl-module

DESCRIPTION="change directory temporarily for a limited scope"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	virtual/perl-Module-Build"

SRC_TEST=do
