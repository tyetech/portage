# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/XML-XPath/Attic/XML-XPath-1.13.ebuild,v 1.14 2005/10/02 13:32:51 agriffis Exp $

inherit perl-module

DESCRIPTION="A XPath Perl Module"
SRC_URI="mirror://cpan/authors/id/M/MS/MSERGEANT/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/~msergeant/${P}/"

SLOT="0"
LICENSE="Artistic"
KEYWORDS="alpha amd64 ia64 ~mips ppc ppc64 sparc x86"
IUSE=""

DEPEND="${DEPEND}
	>=dev-perl/XML-Parser-2.30"
