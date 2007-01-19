# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/PerlIO-eol/Attic/PerlIO-eol-0.13.ebuild,v 1.11 2007/01/19 15:23:08 mcummings Exp $

inherit perl-module

DESCRIPTION="PerlIO::eol - PerlIO layer for normalizing line endings"
SRC_URI="mirror://cpan/authors/id/A/AU/AUTRIJUS/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/~autrijus/"

SLOT="0"
LICENSE="Artistic"
SRC_TEST="do"
KEYWORDS="amd64 ia64 ~ppc sparc x86"
IUSE=""


DEPEND="dev-lang/perl"
