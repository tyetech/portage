# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Math-BigInt/Attic/Math-BigInt-1.69.ebuild,v 1.4 2004/05/24 00:24:28 kloeri Exp $

inherit perl-module

S=${WORKDIR}/${P}
DESCRIPTION="Arbitrary size floating point math package"
SRC_URI="http://www.cpan.org/modules/by-authors/id/T/TE/TELS/math/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/modules/by-authors/id/T/TE/TELS/math/${P}.readme"

SRC_TEST="do"
SLOT="0"
LICENSE="Artistic | GPL-2"
KEYWORDS="x86 ~amd64 alpha ~hppa ~mips ~ppc sparc s390"

