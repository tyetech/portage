# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Lingua-EN-NameParse/Attic/Lingua-EN-NameParse-1.22.ebuild,v 1.6 2006/07/10 16:20:12 agriffis Exp $

inherit perl-module

DESCRIPTION="Manipulate persons name"
SRC_URI="mirror://cpan/authors/id/K/KI/KIMRYAN/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/modules/by-authors/id/K/KI/KIMRYAN/${P}.readme"
SRC_TEST="do"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="ia64 ppc x86"

DEPEND="dev-perl/Parse-RecDescent"
RDEPEND="${DEPEND}"
IUSE=""