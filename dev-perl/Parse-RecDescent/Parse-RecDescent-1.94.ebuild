# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Parse-RecDescent/Attic/Parse-RecDescent-1.94.ebuild,v 1.7 2004/03/07 05:15:46 geoman Exp $

inherit perl-module

S=${WORKDIR}/${P}
DESCRIPTION="Parse::RecDescent - generate recursive-descent parsers"
SRC_URI="http://cpan.valueclick.com/modules/by-module/Parse/${P}.tar.gz"
HOMEPAGE="http://cpan.valueclick.com/modules/by-module/Parse/${P}.readme"

SLOT="0"
LICENSE="Artistic"
KEYWORDS="x86 amd64 ~ppc sparc alpha hppa ~mips"

DEPEND="dev-perl/Text-Balanced"

src_install () {

	perl-module_src_install
	dohtml -r tutorial
}
