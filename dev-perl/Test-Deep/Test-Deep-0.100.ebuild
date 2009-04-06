# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Test-Deep/Attic/Test-Deep-0.100.ebuild,v 1.3 2009/04/06 15:44:58 armin76 Exp $

inherit perl-module
IUSE=""

DESCRIPTION="Test::Deep - Extremely flexible deep comparison"
SRC_URI="mirror://cpan/authors/id/F/FD/FDALY/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/~fdaly/"

SLOT="0"
LICENSE="Artistic"
KEYWORDS="alpha ~amd64 ~arm ia64 ~ppc ~s390 ~sh sparc x86"

SRC_TEST="do"
DEPEND="dev-perl/Test-NoWarnings
	dev-perl/Test-Tester
	dev-lang/perl"
