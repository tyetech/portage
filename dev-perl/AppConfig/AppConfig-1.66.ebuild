# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/AppConfig/Attic/AppConfig-1.66.ebuild,v 1.6 2008/10/27 16:22:22 aballier Exp $

inherit perl-module eutils

DESCRIPTION="Perl5 module for reading configuration files and parsing command line arguments."
SRC_URI="mirror://cpan/authors/id/A/AB/ABW/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/~abw/"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
#KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd"
KEYWORDS="alpha amd64 ia64 ppc ppc64 sparc x86 ~x86-fbsd"
IUSE=""
PATCHES="${FILESDIR}/blockdiffs.patch"

SRC_TEST="do"

DEPEND=">=dev-perl/File-HomeDir-0.57
	virtual/perl-Test-Simple
	dev-lang/perl"
