# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Sort-Versions/Attic/Sort-Versions-1.4.ebuild,v 1.1 2003/05/31 23:59:46 mcummings Exp $

IUSE=""

inherit perl-module

S=${WORKDIR}/${P}
DESCRIPTION="A perl 5 module for sorting of revision-like numbers"
SRC_URI="http://search.cpan.org/CPAN/authors/id/E/ED/EDAVIS/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/author/EDAVIS/${P}/"

SLOT="0"
LICENSE="Artistic | GPL-2"
KEYWORDS="x86 ~ppc ~sparc ~alpha"

DEPEND="${DEPEND}"
