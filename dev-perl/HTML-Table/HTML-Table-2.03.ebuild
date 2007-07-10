# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/HTML-Table/Attic/HTML-Table-2.03.ebuild,v 1.6 2007/07/10 23:33:30 mr_bones_ Exp $

inherit perl-module

DESCRIPTION="produces HTML tables"
HOMEPAGE="http://search.cpan.org/~ajpeacock/"
SRC_URI="mirror://cpan/authors/id/A/AJ/AJPEACOCK/${P}.tar.gz"

LICENSE="Artistic"
SLOT="0"
KEYWORDS="~ia64 ~ppc sparc x86"
IUSE=""

SRC_TEST="do"

DEPEND="dev-lang/perl"
