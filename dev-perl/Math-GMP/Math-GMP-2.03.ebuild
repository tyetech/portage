# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Math-GMP/Attic/Math-GMP-2.03.ebuild,v 1.1 2003/06/23 13:18:45 mcummings Exp $

inherit perl-module

S=${WORKDIR}/${P}
DESCRIPTION="High speed arbitrary size integer math"
SRC_URI="http://www.cpan.org/modules/by-authors/id/C/CH/CHIPT/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/modules/by-authors/id/C/CH/CHIPT/${P}.readme"

SLOT="0"
LICENSE="Artistic | GPL-2"
KEYWORDS="x86 ~alpha ~ppc ~sparc"

DEPEND="dev-libs/gmp"
