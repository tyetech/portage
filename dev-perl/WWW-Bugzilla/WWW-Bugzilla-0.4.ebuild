# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/WWW-Bugzilla/Attic/WWW-Bugzilla-0.4.ebuild,v 1.1 2004/06/10 20:18:00 mcummings Exp $

inherit perl-module

CATEGORY="dev-perl"
DESCRIPTION="automate interaction with bugzilla"
SRC_URI="http://search.cpan.org/CPAN/authors/id/M/MC/MCVELLA/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/~mcvella/${P}"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~x86 ~sparc ~amd64"

RDEPEND="dev-perl/WWW-Mechanize
		dev-perl/Class-MethodMaker"

DEPEND="${RDEPEND}"


