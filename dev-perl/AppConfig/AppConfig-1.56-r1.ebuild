# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/AppConfig/Attic/AppConfig-1.56-r1.ebuild,v 1.11 2006/07/03 20:13:43 ian Exp $

inherit perl-module eutils

DESCRIPTION="Perl5 module for reading configuration files and parsing command line arguments."
SRC_URI="mirror://cpan/authors/id/A/AB/ABW/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/~abw/${P}/"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="x86 amd64 sparc alpha ppc"
IUSE=""

DEPEND="virtual/perl-Test-Simple"
RDEPEND="${DEPEND}"

src_unpack() {
	unpack ${A}
	cd ${S}
	epatch ${FILESDIR}/blockwhitespace.patch
}