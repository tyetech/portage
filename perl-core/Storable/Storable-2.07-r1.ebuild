# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/perl-core/cvs-repo/gentoo-x86/perl-core/Storable/Attic/Storable-2.07-r1.ebuild,v 1.4 2006/08/04 13:30:56 mcummings Exp $

inherit perl-module

DESCRIPTION="The Perl Storable Module"
SRC_URI="http://www.cpan.org/modules/by-module/Storable/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/modules/by-module/Storable/${P}.readme"
IUSE=""
SLOT="0"
LICENSE="Artistic"
KEYWORDS="ia64 x86 amd64 ~ppc alpha sparc hppa mips"

DEPEND="dev-lang/perl
		virtual/perl-Test-Simple"
