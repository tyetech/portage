# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/XML-Encoding/Attic/XML-Encoding-1.01-r2.ebuild,v 1.6 2004/06/25 01:10:34 agriffis Exp $

inherit perl-module

S=${WORKDIR}/${P}
DESCRIPTION="Perl Module that parses encoding map XML files"
SRC_URI="http://cpan.valueclick.com/modules/by-module/XML/${P}.tar.gz"
HOMEPAGE="http://cpan.valueclick.com/modules/by-module/XML/${P}.readme"

SLOT="0"
LICENSE="Artistic"
KEYWORDS="x86 amd64 ppc sparc alpha"

DEPEND="${DEPEND}
	>=dev-perl/XML-Parser-2.29"
