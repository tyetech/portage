# Copyright 1999-2000 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Achim Gottinger <achim@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Data-ShowTable/Attic/Data-ShowTable-3.3.ebuild,v 1.1 2001/01/23 06:17:49 achim Exp $

A=${P}.tar.gz
S=${WORKDIR}/${P}
CATEGORY="dev-perl"
DESCRIPTION="The Perl ShowTable Module"
SRC_URI="http://www.cpan.org/modules/by-module/Data/${A}"
HOMEPAGE="http://www.cpan.org/modules/by-module/Data/${P}.readme"

DEPEND=">=sys-devel/perl-5"

src_compile() {
    cd ${S}
    perl Makefile.PL
    try make
    #try make test
}

src_install () {
    cd ${S}
    try make PREFIX=${D}/usr install
    dodoc Changes Copyright GNU-LICENSE MANIFEST README
    docinto html
    dodoc *.html
}



