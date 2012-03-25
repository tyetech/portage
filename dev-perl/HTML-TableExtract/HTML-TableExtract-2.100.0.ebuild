# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/HTML-TableExtract/Attic/HTML-TableExtract-2.100.0.ebuild,v 1.3 2012/03/25 15:18:44 armin76 Exp $

EAPI=4

MODULE_AUTHOR=MSISK
MODULE_VERSION=2.10
inherit perl-module

DESCRIPTION="The Perl Table-Extract Module"

SLOT="0"
KEYWORDS="alpha amd64 ppc ppc64 x86"
IUSE=""

RDEPEND=">=dev-perl/HTML-Element-Extended-1.16
	dev-perl/HTML-Parser"
DEPEND="${RDEPEND}"

mydoc="TODO"
