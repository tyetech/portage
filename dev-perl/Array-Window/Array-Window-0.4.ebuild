# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Array-Window/Attic/Array-Window-0.4.ebuild,v 1.3 2004/06/25 00:06:44 agriffis Exp $

inherit perl-module

S=${WORKDIR}/${P}
DESCRIPTION="Array::Window - Calculate windows/subsets/pages of arrays"
SRC_URI="http://www.cpan.org/modules/by-module/Array/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/modules/by-module/Array/${P}.readme"
IUSE=""
SLOT="0"
LICENSE="Artistic GPL-2"
KEYWORDS="~x86 ~amd64 ~sparc ~ppc"
SRC_TEST="do"

DEPEND="${DEPEND}
	dev-perl/Test-Simple
	dev-perl/Class-Inspector"
