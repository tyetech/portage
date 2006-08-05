# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/ConfigReader/Attic/ConfigReader-0.5.ebuild,v 1.7 2006/08/05 01:33:17 mcummings Exp $

# No sense in inheriting since this package is a flat set of files.
# No Makefile.PL/Build.PL to work with at all.
#inherit perl-module

DESCRIPTION="Read directives from a configuration file."
HOMEPAGE="http://search.cpan.org/~amw/${P}/"
SRC_URI="mirror://cpan/authors/id/A/AM/AMW/${P}.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="ia64 ~ppc sparc x86"
IUSE=""

DEPEND="dev-lang/perl"
RDEPEND="${DEPEND}"

src_install() {
	eval `perl '-V:installvendorlib'`
	dodir ${installvendorlib}/${PN}
	cp ${S}/*.pm ${D}/${installvendorlib}/${PN}
	cp ${PN}.pod ${D}/${installvendorlib}
	dodoc README COPYING.LIB
}