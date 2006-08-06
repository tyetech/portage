# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Tie-Array-Sorted/Attic/Tie-Array-Sorted-1.2.ebuild,v 1.3 2006/08/06 00:33:40 mcummings Exp $

inherit perl-module

DESCRIPTION="An array which is kept sorted"
HOMEPAGE="http://search.cpan.org/~simon/${P}/"
SRC_URI="mirror://cpan/authors/id/S/SI/SIMON/${P}.tar.gz"

LICENSE="Artistic"
SLOT="0"
KEYWORDS="~x86 ~sparc"
IUSE=""

SRC_TEST="do"


DEPEND="dev-lang/perl"
RDEPEND="${DEPEND}"
