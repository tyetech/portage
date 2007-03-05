# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/XML-AutoWriter/Attic/XML-AutoWriter-0.39.ebuild,v 1.10 2007/03/05 12:38:42 ticho Exp $

inherit perl-module

DESCRIPTION="DOCTYPE based XML output"
SRC_URI="mirror://cpan/authors/id/R/RB/RBS/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/~rbs/"
IUSE=""
SLOT="0"
LICENSE="as-is"
KEYWORDS="amd64 hppa ia64 sparc x86"

DEPEND="dev-perl/XML-Parser
	dev-lang/perl"

SRC_TEST="do"
