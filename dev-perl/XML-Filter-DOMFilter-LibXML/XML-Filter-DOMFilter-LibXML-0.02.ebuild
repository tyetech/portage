# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/XML-Filter-DOMFilter-LibXML/Attic/XML-Filter-DOMFilter-LibXML-0.02.ebuild,v 1.5 2006/07/05 13:22:23 ian Exp $

inherit perl-module

DESCRIPTION="SAX Filter allowing DOM processing of selected subtrees"
HOMEPAGE="http://search.cpan.org/search?query=${PN}"
SRC_URI="mirror://cpan/authors/id/P/PA/PAJAS/${P}.tar.gz"

LICENSE="Artistic"
SLOT="0"
KEYWORDS="~hppa ~ia64 sparc ~x86"
IUSE=""

SRC_TEST="do"

DEPEND=">=dev-perl/XML-LibXML-1.53"
RDEPEND="${DEPEND}"