# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/XML-XPath/Attic/XML-XPath-1.13.ebuild,v 1.7 2004/07/14 21:23:31 agriffis Exp $

inherit perl-module

DESCRIPTION="A XPath Perl Module"
SRC_URI="http://cpan.valueclick.com/modules/by-module/XML/${P}.tar.gz"
HOMEPAGE="http://cpan.valueclick.com/modules/by-module/XML/${P}.readme"

SLOT="0"
LICENSE="Artistic"
KEYWORDS="x86 amd64 ~ppc sparc alpha ~mips"
IUSE=""

DEPEND="${DEPEND}
	>=dev-perl/XML-Parser-2.30"
