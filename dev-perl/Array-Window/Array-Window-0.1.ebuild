# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Array-Window/Attic/Array-Window-0.1.ebuild,v 1.1 2003/06/01 03:13:06 mcummings Exp $

inherit perl-module

S=${WORKDIR}/${P}
DESCRIPTION="Array::Window - Calculate windows/subsets/pages of arrays"
SRC_URI="http://www.cpan.org/modules/by-module/Array/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/modules/by-module/Array/${P}.readme"
IUSE=""
SLOT="0"
LICENSE="Artistic GPL-2"
KEYWORDS="~x86 ~sparc"

DEPEND="${DEPEND}
	dev-perl/Test-Simple
	dev-perl/Class-Inspector"
