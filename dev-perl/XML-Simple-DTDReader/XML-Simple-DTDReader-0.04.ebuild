# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/XML-Simple-DTDReader/Attic/XML-Simple-DTDReader-0.04.ebuild,v 1.4 2009/06/23 11:02:26 tove Exp $

MODULE_AUTHOR=ALEXMV
inherit perl-module

DESCRIPTION="Simple XML file reading based on their DTDs"

SLOT="0"
KEYWORDS="x86"
IUSE=""

DEPEND=">=dev-perl/XML-Parser-2.34
	dev-lang/perl"
RDEPEND="${DEPEND}"
