# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/List-MoreUtils/Attic/List-MoreUtils-0.21.ebuild,v 1.5 2007/07/09 16:19:55 armin76 Exp $

inherit perl-module

DESCRIPTION="Provide the missing functionality from List::Util"
HOMEPAGE="http://search.cpan.org/~vparseval/"
SRC_URI="mirror://cpan/authors/id/V/VP/VPARSEVAL/${P}.tar.gz"

LICENSE="Artistic"
SLOT="0"
KEYWORDS="amd64 sparc x86"
IUSE=""

SRC_TEST="do"


DEPEND="dev-lang/perl"
