# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/XML-Simple/Attic/XML-Simple-1.08-r1.ebuild,v 1.2 2002/12/09 04:21:11 manson Exp $

inherit perl-module

S=${WORKDIR}/${P}
DESCRIPTION="A Perl XML Simple package."
SRC_URI="http://www.cpan.org/authors/id/G/GR/GRANTM/${P}.tar.gz"
HOMEPAGE="http://cpan.valueclick.com/modules/by-category/11_String_Lang_Text_Proc/XML/${P}.readme"

SLOT="0"
LICENSE="Artistic"
KEYWORDS="x86 ppc sparc  alpha"

DEPEND="${DEPEND}
	>=dev-perl/XML-Parser-2.30"
