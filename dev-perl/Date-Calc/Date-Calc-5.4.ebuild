# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Date-Calc/Attic/Date-Calc-5.4.ebuild,v 1.1 2004/10/19 10:19:52 mcummings Exp $

inherit perl-module

DESCRIPTION="Gregorian calendar date calculations"
HOMEPAGE="http://www.cpan.org/~stbey/${P}/"
SRC_URI="mirror://cpan/authors/id/STBEY/${P}.tar.gz"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~x86 ~sparc"
IUSE=""

SRC_TEST="do"

DEPEND=">=dev-perl/Bit-Vector-6.4
		>=dev-perl/Carp-Clan-5.3"

export OPTIMIZE="$CFLAGS"
mydoc="ToDo"
