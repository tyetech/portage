# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/PAR/Attic/PAR-0.992.ebuild,v 1.2 2009/07/19 17:42:11 tove Exp $

EAPI=2

MODULE_AUTHOR=SMUELLER
inherit perl-module

DESCRIPTION="Perl Archive Toolkit"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="virtual/perl-AutoLoader
	>=virtual/perl-IO-Compress-1.30
	>=dev-perl/Archive-Zip-1.00
	>=dev-perl/PAR-Dist-0.32
	virtual/perl-Digest-SHA
	dev-perl/Module-Signature"
RDEPEND="${DEPEND}"

SRC_TEST=do
