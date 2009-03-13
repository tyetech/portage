# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Algorithm-Munkres/Attic/Algorithm-Munkres-0.08.ebuild,v 1.1 2009/03/13 00:03:13 weaver Exp $

inherit perl-module

DESCRIPTION="Munkres solution to classical Assignment problem"
HOMEPAGE="http://search.cpan.org/~tpederse/Algorithm-Munkres-0.08/lib/Algorithm/Munkres.pm"
SRC_URI="mirror://cpan/authors/id/T/TP/TPEDERSE/${P}.tar.gz"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
SRC_TEST="do"

DEPEND="dev-lang/perl"
