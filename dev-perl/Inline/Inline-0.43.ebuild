# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Inline/Attic/Inline-0.43.ebuild,v 1.17 2005/02/01 11:07:42 mcummings Exp $

inherit perl-module

DESCRIPTION="A perl XML down translate module"
SRC_URI="http://www.cpan.org/authors/id/I/IN/INGY/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/doc/INGY/Inline-0.43/Inline.pod"

SLOT="0"
LICENSE="Artistic"
KEYWORDS="x86 amd64 ppc sparc alpha"
IUSE=""

DEPEND="${DEPEND}
	dev-perl/Test-Harness"

src_compile() {

	echo "y" | perl-module_src_compile
	perl-module_src_test
}


src_install () {

	perl-module_src_install
	dohtml DT.html
}
