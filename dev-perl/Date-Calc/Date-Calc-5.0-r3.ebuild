# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Date-Calc/Attic/Date-Calc-5.0-r3.ebuild,v 1.1 2002/10/02 10:59:08 mcummings Exp $

inherit perl-module

S=${WORKDIR}/${P}
DESCRIPTION="Date::Calc module for perl"
SRC_URI="http://www.cpan.org/authors/id/STBEY/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/authors/id/STBEY/${P}.readme"

SLOT="0"
LICENSE="Artistic | GPL-2"
KEYWORDS="x86 ppc sparc sparc64"

DEPEND="${DEPEND}
	dev-perl/Bit-Vector"

export OPTIMIZE="$CFLAGS"
mydoc="ToDo"
