# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Class-XPath/Attic/Class-XPath-1.4.ebuild,v 1.5 2006/07/04 04:50:52 ian Exp $

inherit perl-module

DESCRIPTION="adds xpath matching to object trees"
HOMEPAGE="http://search.cpan.org/~samtregar/${P}/"
SRC_URI="mirror://cpan/authors/id/S/SA/SAMTREGAR/${P}.tar.gz"

LICENSE="Artistic"
SLOT="0"
KEYWORDS="~amd64 ~ia64 sparc x86"
IUSE=""

SRC_TEST="do"

# HTML-Tree dep is for testing
DEPEND="dev-perl/HTML-Tree"
RDEPEND="${DEPEND}"