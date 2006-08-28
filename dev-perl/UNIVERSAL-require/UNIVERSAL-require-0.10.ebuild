# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/UNIVERSAL-require/Attic/UNIVERSAL-require-0.10.ebuild,v 1.3 2006/08/28 00:37:50 mcummings Exp $

inherit perl-module

DESCRIPTION="UNIVERSAL::require - require() modules from a variable"
HOMEPAGE="http://search.cpan.org/~mschwern/${P}/"
SRC_URI="mirror://cpan/authors/id/M/MS/MSCHWERN/${P}.tar.gz"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""
SRC_TEST="do"

DEPEND="dev-lang/perl"
RDEPEND="${DEPEND}"
