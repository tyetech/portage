# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/XML-Encoding/Attic/XML-Encoding-1.01-r2.ebuild,v 1.15 2007/01/19 17:25:37 mcummings Exp $

inherit perl-module

DESCRIPTION="Perl Module that parses encoding map XML files"
SRC_URI="mirror://cpan/authors/id/C/CO/COOPERCL/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/~coopercl/"

SLOT="0"
LICENSE="Artistic"
KEYWORDS="alpha amd64 hppa ia64 ppc sparc x86"
IUSE=""

DEPEND=">=dev-perl/XML-Parser-2.29
	dev-lang/perl"
