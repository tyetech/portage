# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/File-Which/Attic/File-Which-0.05.ebuild,v 1.9 2007/02/07 14:24:31 jer Exp $

inherit perl-module

DESCRIPTION="Perl module implementing \`which' internally"
SRC_URI="mirror://cpan/authors/id/P/PE/PEREINAR/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/search?module=File::Which"

SLOT="0"
LICENSE="Artistic"
KEYWORDS="alpha amd64 ~hppa ia64 ~mips ppc ppc64 sparc x86"
IUSE=""

SRC_TEST="do"

mydoc="TODO"


DEPEND="dev-lang/perl"
