# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Attribute-Handlers/Attic/Attribute-Handlers-0.78-r1.ebuild,v 1.2 2003/06/08 04:30:23 rac Exp $

inherit perl-module

DESCRIPTION="A Perl module for I/O on in-core objects like strings and arrays"
SRC_URI="http://www.cpan.org/modules/by-module/Attribute/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/author/ABERGMAN/${P}/"
IUSE=""
SLOT="0"
LICENSE="Artistic"
KEYWORDS="x86 ppc sparc alpha"

myconf="${myconf} INSTALLDIRS=perl"
