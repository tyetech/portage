# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/ConfigReader/Attic/ConfigReader-0.5.ebuild,v 1.2 2005/06/25 23:25:20 agriffis Exp $

# No sense in inheriting since this package is a flat set of files.
# No Makefile.PL/Build.PL to work with at all.
#inherit perl-module

DESCRIPTION="Read directives from a configuration file."
HOMEPAGE="http://search.cpan.org/~amw/${P}/"
SRC_URI="mirror://cpan/authors/id/A/AM/AMW/${P}.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~x86 ~sparc"
IUSE=""

DEPEND="dev-lang/perl"

src_install() {
	eval `perl '-V:installvendorlib'`
	dodir ${installvendorlib}/${PN}
	cp ${S}/*.pm ${D}/${installvendorlib}/${PN}
	cp ${PN}.pod ${D}/${installvendorlib}
	dodoc README COPYING.LIB
}
